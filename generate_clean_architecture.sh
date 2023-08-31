mkdir -p src
cd src
mkdir -p adapters config domain entrypoints ports use_cases
touch adapters/__init__.py
touch config/__init__.py config/containers.py config/logger.py config/settings.py
touch domain/__init__.py domain/aggregates.py domain/entities.py domain/exceptions.py domain/value_objects.py
touch entrypoints/__init__.py
touch ports/__init__.py ports/repositories.py ports/use_cases.py
touch use_cases/__init__.py use_cases/exceptions.py