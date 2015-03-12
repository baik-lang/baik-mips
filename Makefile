INSTALL_LOG = install.log
VERSION = 8.15
.PHONY : install
.PHONY : uninstall

all:
	@echo "Compiling.........................."
	gcc -o baik -DUSE_GD -DUSE_CGI -DUSE_WEBSTYLE -DUSE_SQLITE -DLINUX $(INCLUDES) $(LIBS) tbaik.c baik_ident.c baik_stack.c baik_expression.c baik_compare.c baik_factor.c interpreter.c interpreterSub.c interpreterClass.c sqlite_common.c -lpthread -lm -lsqlite3 -lgd
	@echo "................................................"
	@echo "Makefile: Available actions: install, uninstall"
install:
	-install -d -m 755 $(PREFIX)/bin
	-cp -R -L baik $(PREFIX)/bin/
uninstall:
	rm -rf $(PREFIX)/bin/baik

