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

Scenario 3: GUI - Expandir um post que foi deletado.
     Given: I am at the “Home” page.
       And: I can see the post title “A NA’VI se tornará um time russo?”.
      When: I select this post title.
      Then: I can see a warning explaining that this post does not exist.. 
       And: I am at the “Home” page.

Scenario 4: GUI - Usuário não cadastrado: Tentar visualizar os próprios posts
   Given: I am at the “Home” page.
     And: I am not logged in.
     And: I can all the post from all users sorted by “Mais Recente”    
    When: I select to filter by “Only my posts”.
    Then: I’m still at the “Home” Page
     And: I can see a warning that only logged users can see their posts.
     And: I still can see all the post from all users sorted by “Mais Recente”

Scenario 5: GUI - Usuário cadastrado: Tentar visualizar os próprios posts
   Given: I am at the “Home” page.
     And: I am logged in as "user00".
     And: I can all the post from all users sorted by “Mais Recente”    
    When: I select to filter by “Only my posts”.
    Then: I’m still at the “Home” Page
     And: I can see all the posts made by "user00"

Scenario 6: GUI - Expandir um post.
     Given: I am at the “Home” page.
       And: I can see the post title “A NA’VI se tornará um time     
           russo?”.
      When: I select this post title.
      Then: I’m redirected to “A NA’VI se tornará um time     
            Russo?” page. 
       And: I can now see the whole post, its information(“topic”, 
           “creator”, “date/hour”), its commentaries.