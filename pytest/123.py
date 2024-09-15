import pytest 



@pytest.mark.smoke
def testlogin():
    print("login successful")
    
@pytest.mark.regression
def testcalculation():
    assert 2+2 == 4 
    
@pytest.mark.skip
def testlogout():
    print("logout successful")