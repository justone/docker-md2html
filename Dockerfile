FROM conoria/alpine-pandoc
MAINTAINER Nate Jones <nate@endot.org>

COPY pandoc.css /pandoc.css
ENTRYPOINT ["pandoc", "-t", "html", "-T", "Pandoc Generated", "--smart", "--standalone", "--self-contained", "-c", "/pandoc.css", "-"]
