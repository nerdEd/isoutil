on open video_ts_container
	set video_ts_container to POSIX path of video_ts_container
	set question to display dialog ("Enter Movie Name:") default answer "Movie"
	set movie_name to text returned of question
	set iso_name to "~/Desktop/" & movie_name & ".iso"
	do shell script "hdiutil makehybrid -udf -udf-volume-name " & movie_name & " -o " &  iso_name & " " & video_ts_container
end open