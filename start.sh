before_script:
  - git clone https://github.com/Jonas-Knebel/RedocDemo
  - git checkout main
  - git status

    
pages:

  stage: deploy
  script:
  - for filename in ./*.yaml; 
    do 
        openapi bundle -o ./dist/$filename $filename;
    done
  - git add dist
  - git commit -a -m "Compiled Redoc for YAML Files";
  - git remote add github https://github.com/Jonas-Knebel/RedocDemo.git
  - git status
  - git push github HEAD:main

  artifacts:
    paths:
    - public
  only:
  - main 