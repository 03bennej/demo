.PHONY: venv

# install virtual environment
venv: venv/bin/activate
venv/bin/activate: requirements.txt
	python -m venv venv
	. venv/bin/activate 
	pip install --upgrade pip
	pip install -r requirements.txt
	pip install "git+https://github.com/03bennej/ei-python.git"
	pip install -e .

example:
	source venv/bin/activate; python src/sub_folder/example.py