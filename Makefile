REPOSITORY=https://github.com/conda-forge/miniforge/releases/latest/download
INSTALLER=Miniforge3-$$(uname)-$$(uname -m).sh
PYENV=miniforge
CONDA=$(PYENV)/bin/conda

.PHONY: clean

$(PYENV)/bin/activate: $(INSTALLER)
	test -d $(PYENV) || bash ./$(INSTALLER) -b -p $(PYENV)
	$(CONDA) update conda -y
	$(CONDA) install pip wheel -y
	touch $(PYENV)/bin/activate

$(INSTALLER):
	wget $(REPOSITORY)/$(INSTALLER)

clean:
	rm -rf $(PYENV) $(INSTALLER)
