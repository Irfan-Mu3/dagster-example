from setuptools import find_packages, setup
setup(
    name="hackernews_flow",
    packages=find_packages(),
    install_requires=["dagster", "dagster-cloud"],
    extras_require={"dev": ["dagster-webserver", "pytest"]},
)