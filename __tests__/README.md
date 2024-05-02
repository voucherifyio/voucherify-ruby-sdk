## Introductions

This is the test suite for the Voucherify Ruby SDK, which is based on the OpenAPI specification. 
Instead of relying on an automatically generated SDK tests, this test suite has been manually crafted. 
The primary reason for this approach is to ensure that the most critical aspects of the SDK function flawlessly.

## Running tests

We strongly recommend running the tests using the Dockerfile provided in the root directory. 
If you prefer to run tests locally, here are the steps you need to follow.

### Requirements 

- all elements described in [main README.md](../README.md) like Ruby and Gem manager
- Voucherify SDK built locally
- rspec installed `(gem install rspec)`

### Running locally

1. Go into `root` directory
2. Follow the steps described in [main README.md](../README.md) for building SDK locally
3. Run `gem install rspec` command
4. Go into `__tests__` directory
5. Run `rspec ./spec` command

**Note that running tests will affect your Voucherify project data. Run tests only on development projects.**

## Contributing

All new tests should be added to the `spec` directory. 
This directory is intended exclusively for test suites and should contain minimal logic. 
Place all advanced logic in the `lib` directory. It's important to maintain an appropriate division of modules and functions. 
Keep any essential global logic in the `voucherify_data.rb` singleton.

**Please note that in the current state of the test suite, some tests are interdependent. All tests run in alphanumeric order within the `spec` directory.**
