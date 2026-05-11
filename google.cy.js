describe('Google Home Page Negative Test', () => {
  it('should fail because the word does not exist', () => {
    cy.visit('https://www.google.com');

    // This word does NOT exist on Google homepage → test will fail
    cy.contains('ThisWordDoesNotExist12345')
      .should('be.visible');
  });
});