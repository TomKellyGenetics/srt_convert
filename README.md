# srt_convert
Script to convert MicroDVD (sub) to SubRip (srt)

parses .sub format files and converts to .srt format including conversion of frames to time (at default 23.98 frames/sec)

## Example call

```Rscript srt_convert.R test.sub ```

Output: `test.srt`

### Sub Format Example

```
{811}{966}'The best way to eat natto fermented beans.
{970}{1005}'You need good beans...
{1009}{1045}'and to do it right.
{1048}{1083}'First you take your chopsticks...
{1087}{1130}'...and you mash 'em up good'
{1196}{1231}What are you doing, Norimichi?.
{1235}{1254}What?.
{1257}{1311}It's a school day. You'll be late.
{1314}{1375}I know. I'm going right now.
{1473}{1537}--Hey, that's cold!|--Get going!
```

### SRT Format Example

```
1
00:00:33,820 --> 00:00:40,284
'The best way to eat natto fermented beans.

2
00:00:40,450 --> 00:00:41,910
'You need good beans...

3
00:00:42,77 --> 00:00:43,578
'and to do it right.

4
00:00:43,703 --> 00:00:45,163
'First you take your chopsticks...

5
00:00:45,329 --> 00:00:47,123
'...and you mash 'em up good'

6
00:00:49,875 --> 00:00:51,334
What are you doing, Norimichi?.

7
00:00:51,501 --> 00:00:52,294
What?.

8
00:00:52,419 --> 00:00:54,671
It's a school day. You'll be late.

9
00:00:54,796 --> 00:00:57,339
I know. I'm going right now.

10
00:01:01,426 --> 00:01:04,95
--Hey, that's cold!|--Get going!
```

