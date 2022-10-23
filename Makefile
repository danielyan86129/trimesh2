all win32 linux32 linux64 darwin32 darwin64 clean:
	$(MAKE) -C libsrc $@
	$(MAKE) -C gluit $@
	$(MAKE) -C utilsrc $@

debug:
	$(MAKE) -C libsrc DEBUG=y
	$(MAKE) -C gluit DEBUG=y
	$(MAKE) -C utilsrc DEBUG=y

FINDCMD = find trimesh2 -name 'OBJ*' -prune -o -name '.git*' -prune -o -type f -print

tar:
	cd .. && tar zcvf trimesh2.tar.gz `$(FINDCMD) | sort`

zip:
	cd .. && $(FINDCMD) | sort | zip -9 trimesh2 -@

.PHONY : all win32 linux32 linux64 darwin32 darwin64 clean debug tar zip

.PHONY: list
list:
	@LC_ALL=C $(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/(^|\n)# Files(\n|$$)/,/(^|\n)# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'