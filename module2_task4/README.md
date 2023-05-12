# Testing in the Software Development Methodology

## Learning Objectives

This project aims at practicing with automated tests. The goal is to understand the pros and cons of different testing methods to be able to understand the value of doing, or not doing, a kind of test.

After this project, you should be able to:

    - Understand what linting is the extent of its usages (which kind of file can be linted, and the impact of running it often)
    - Understand the difference between unit tests and integration tests
    - Use code coverage as a helper to write tests
    - Understand that not only “classical” code is to be tested, but also a lot of the artifacts we can generate
    - Understand how “component”-based testing for acceptance and end to end validation is to be used

## Prerequisites

The following elements are required In addition to the previous module (“Module 1: Introduction to DevOps: Automate Everything to Focus on What Really Matters”) prerequisites.

### Concepts

You should have a basic knowledge on the following concepts:

    - What a compiled language is (C/C#/Golang/Rust/etc.)

        - Generation process from source to executable binary
        - Basic types: string, integer, boolean, maps, arrays
        - Basic algorithmic: loops, conditional, functions
    - Installing command line tools with NPM (in addition to package managers)

    - Understand the basics of the HTTP protocol (client/server, verbs, headers)

### Tooling

This project needs the following tools / services:

    - Same tools as previous module
    - Golang in v1.15.*
    - NPM v7+ with NodeJS v14.* (stable)
    - Python 3 with pip module
    - golangci-lint

## Story

Following the previous module situation, you are now able to build and deploy the static website for the company Awesome Inc. in an automated way.

As the communication team is happy with your work, you’ve been tasked to add an HTTP API to improve the website.

You want to ensure that the shipped software is without bugs. You’ll test each component of this new website to ensure that there will be no regression in the future, and to make sure that any refactoring or change can be done with confidence.

The API is written in the Golang language but there is no need to be familiar with the language.

While the production team is building the new production platform for the website, you’ve been tasked to create an HTTP API application to add new features.

As we are in a “DevOps” course, your “Ops” personality expects that this application is monitored by a “Health” page to determine if the application is running and ready to accept traffic.

# Awesome Inc. Website

## Prerequisites

    - Go-Hugo
    - Make (GNU Make version 3.81 or 4.0)

## Lifecycle

    - help: show the help
    - build: Generate the website from the markdown and configuration files in the dist/ directory.
    - clean: Clean up the content of the dist/ directory.
    - post: Create a new blog post with a specified title and filename.
    - check: check the post
    - validate: validate the index.html

## Usage

    - make build: Generate the website.
    - make clean: Clean up the dist/ directory.
    - make post POST_NAME=<post-name> POST_TITLE="<post-title>": Create a new blog post with the given name and title.
## Help

    - make help: Show the list of targets and their usage.