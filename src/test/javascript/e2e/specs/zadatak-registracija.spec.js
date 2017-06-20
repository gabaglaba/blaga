var LoginPage = require('../pages/global/login.page.js');
var MenuPage = require('../pages/global/menu.page.js');
var RegistrationPage = require('../pages/registracija/registration.page.js');

function getNCharacters(n){
    var output = '';
    for (var i = 0; i < n; i++){
        output += 'a';
    }
    return output;
}

describe('Registration', function() {
    var loginPage,
        menuPage,
        registrationPage;

    beforeAll(function() {
        loginPage = new LoginPage();
        menuPage = new MenuPage();
        registrationPage = new RegistrationPage();
        browser.get('/');

        menuPage.accountMenu.click();
        expect(menuPage.register.isDisplayed()).toBe(true);
        menuPage.register.click();
    });

    describe('page layout', function() {
        it('should have all the expected page elements.', function() {
            expect(registrationPage.username.isDisplayed()).toBe(true);
            expect(registrationPage.username.isEnabled()).toBe(true);

            expect(registrationPage.email.isDisplayed()).toBe(true);
            expect(registrationPage.email.isEnabled()).toBe(true);

            expect(registrationPage.password.isDisplayed()).toBe(true);
            expect(registrationPage.password.isEnabled()).toBe(true);

            expect(registrationPage.confirmPassword.isDisplayed()).toBe(true);
            expect(registrationPage.confirmPassword.isEnabled()).toBe(true);

            expect(registrationPage.registerBtn.isDisplayed()).toBe(true);
            expect(registrationPage.registerBtn.isEnabled()).toBe(false);
        });
    });

    describe('negative cases should verify that', function() {
        describe('username', function() {
            beforeAll(function() {
                // Postavljamo ostala polja da budu validna.
                registrationPage.email = 'test@gmail.com';
                registrationPage.password = 'qwertyu1A,';
                registrationPage.confirmPassword = 'qwertyu1A,';
            });

            it('is required.', function() {
                expect(registrationPage.registerBtn.isEnabled()).toBe(false);
                registrationPage.username = 'a';
                registrationPage.username.clear();
                expect(registrationPage.usernameErrors).toContain('Your username is required.');
                expect(registrationPage.registerBtn.isEnabled()).toBe(false);
            });

            it('should not have upper case letters in it.', function() {
                expect(registrationPage.registerBtn.isEnabled()).toBe(false);
                registrationPage.username = 'TesT';
                expect(registrationPage.usernameErrors).toContain('Your username can only contain lower-case letters and digits.');
                expect(registrationPage.registerBtn.isEnabled()).toBe(false);
            });

            it('should not have symbols in it.', function() {
                expect(registrationPage.registerBtn.isEnabled()).toBe(false);
                registrationPage.username = 'test.*#';
                expect(registrationPage.usernameErrors).toContain('Your username can only contain lower-case letters and digits.');
                expect(registrationPage.registerBtn.isEnabled()).toBe(false);
            });

            it('should not have more than 50 characters.', function() {
                expect(registrationPage.registerBtn.isEnabled()).toBe(false);
                registrationPage.username = getNCharacters(51);
                expect(registrationPage.usernameErrors).toContain('Your username cannot be longer than 50 characters.');
                expect(registrationPage.registerBtn.isEnabled()).toBe(false);
            });

            afterAll(function() {
                // Reloadujemo stranicu nakon izvrsenih testova za username kako bismo
                // dobili cistu stranicu za sledeci test.
                browser.refresh();
            });
        });

        // TODO: ostala polja
    });

    describe('positive cases should verify that', function() {
        describe('username', function() {
            it('can have 50 characters.', function() {
                // Utvrdimo da nema gresaka
                expect(registrationPage.usernameErrors).toEqual([]);
                registrationPage.username = getNCharacters(50);
                expect(registrationPage.usernameErrors).toEqual([]);
            });

            it('can have 1 character.', function() {
                expect(registrationPage.usernameErrors).toEqual([]);
                registrationPage.username = getNCharacters(1);
                expect(registrationPage.usernameErrors).toEqual([]);
            });

            it('can have digits in it.', function() {
                expect(registrationPage.usernameErrors).toEqual([]);
                registrationPage.username = 'test123';
                expect(registrationPage.usernameErrors).toEqual([]);
            });

            afterAll(function() {
                browser.refresh();
            });
        });

        // TODO: ostala polja

        it('a user can register properly.', function() {
            // TODO: uspesna registracija.
        });
    });
});