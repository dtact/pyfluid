from setuptools import setup, find_packages

setup(
    name='pyfluid',
    version='0.1.0',
    description='Fluid python client library',
    author='Remco Verhoef',
    author_email='remco.verhoef@dtact.com',
    packages=find_packages(where='src'),  # Required
    package_dir={'': 'src'},  # Optional
    install_requires=[
        "grpcio",
        "grpcio-tools",
    ]
)
