<<<<<<< HEAD
FROM apache2-cosign:2.4.29
=======
FROM httpd:2.4.27
>>>>>>> 2df7c6d48dade502c75b26b2f8471b59291c85aa

EXPOSE 80
#EXPOSE 443

#RUN rm /usr/local/apache2/htdocs/index.html

### Start script incorporates config files and sends logs to stdout ###
COPY start.sh .
RUN chmod +x start.sh

### Copy individual outage pages to the root directory in apache.
COPY static/ /usr/local/apache2/htdocs/

CMD /usr/local/apache2/start.sh
