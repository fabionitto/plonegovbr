FROM plone:4.3

COPY site.cfg /plone/instance/
RUN gosu plone buildout -c site.cfg

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["start"]
