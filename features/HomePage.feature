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

Scenario 2: GUI - despor posts do menu inicial por ordem “Mais recente”
     Given: I am at the “Home” page.
       And: I can see the first post title is “Putin invadiu a Ucrânia.” with time of post “2 days ago”
       And: I can see the second post title “Aviões militares chineses no espaço aéreo de 
            Taiwan” with time of post “1 day ago”.
       And: I can see the third post title “USA e a NATO executam sanções a Russia” with 
            time of post “12 hours ago”
      When: I request to sort the posts by “Most Recent”
      Then: I can see that the first post is “USA e a OTAN executam sanções a Russia”
       And: I can see that the second post is “Aviões militares chineses no espaço aéreo de 
            Taiwan” 
       And: I can see that the third post is “Putin invadiu a Ucrânia.”
       And: I’m still at the “Home” page.
