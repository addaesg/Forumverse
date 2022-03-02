Feature: Página inicial.
    As a User.
    I want to be able to see the posts titles in a specific order, 
           expand these posts and search for topics/posts on the 
           "main" page.
    So that I can have a smoother experience while using the "Forum".

Scenario 1: GUI - Filtrar posts no menu inicial por múltiplos tópicos.
     Given: I am at the “Home” page.
       And: I can see the “Topic filter”. 
       And: There aren't any selected topics in the “Topic filter”.
      When: I select the “Topic filter”.
       And: I request to filter by the topics: “Futebol”, “Anime”.
      Then: I can now see only the threads related to the topics: “Futebol” or “Anime”
       And: I’m still at the “Home” page.