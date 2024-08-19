Feature: Project
  Scenario: Como usuario  verificar el Crud del project por api

    Given que uso el token en todo.ly
    When envio un POST "/api/projects.json" con body
    """
    {
      "Content":"Cucumber",
      "Icon":1
    }
    """
    Then mi codigo de respuesta es 200
    And mi atributo "Content" deberia ser "Cucumber"
    And guardo mi Id en la variable IdProject
    When envio un PUT "/api/projects/IdProject.json" con body
    """
    {
      "Content":"Cucumber3",
    }
    """
    Then mi codigo de respuesta es 200
    And mi atributo "Content" deberia ser "Cucumber3"
    When envio un DELETE "/api/projects/IdProject.json" con body
    """

    """
    Then mi codigo de respuesta es 200
    And mi atributo "Content" deberia ser "Cucumber3"