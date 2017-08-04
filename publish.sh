rm -rf build dist pandas_transformers.egg-info
pip install -U twine setuptools
python setup.py sdist
python setup.py bdist_wheel --universal
twine upload dist/*
pip install -e .