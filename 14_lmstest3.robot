*** Settings ***
Documentation    lmstest3
Metadata         ID                           14
Metadata         Automation priority          null
Metadata         Test case importance         Medium
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
lmstest3
    [Documentation]    lmstest3


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_14_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_14_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =       Get Variable Value    ${TEST_SETUP}
    ${TEST_14_SETUP_VALUE} =    Get Variable Value    ${TEST_14_SETUP}
    IF    $TEST_SETUP_VALUE is not None
        Run Keyword    ${TEST_SETUP}
    END
    IF    $TEST_14_SETUP_VALUE is not None
        Run Keyword    ${TEST_14_SETUP}
    END

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_14_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_14_TEARDOWN}.

    ${TEST_14_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_14_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =       Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_14_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_14_TEARDOWN}
    END
    IF    $TEST_TEARDOWN_VALUE is not None
        Run Keyword    ${TEST_TEARDOWN}
    END
