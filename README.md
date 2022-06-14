# Wille

Wille is all about encouraging users to consider what happens to themselves after they die through curated articles; creating a post-life will and funeral plan online. Built in 2 weeks at Le Wagon Tokyo bootcamp.

http://www.mywill-online.cyou/
## Acknowledgements

 - Built in 2 weeks at [Le Wagon](https://www.lewagon.com/tokyo) Tokyo coding bootcamp.
 - Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


## Built With


- [Figma](https://www.figma.com)
- [PostgreSQL](https://www.postgresql.org/)
- [Rails 6](https://guides.rubyonrails.org/)
- [Heroku](https://heroku.com/)
- [Stimulus JS](https://stimulus.hotwired.dev/)
- [Bootstrap](https://getbootstrap.com/)

## Setup

Install gems and JS packages and dependencies
```
bundle install
yarn install
```

### ENV Variables
Cloudinary is used for custom avatar uploading. You'll need an account at [Cloudinary](https://cloudinary.com/) for this part.

Create an .env to store your environment variables
```
touch .env
```
Set these variables for image upload.
```
CLOUDINARY_URL=your_cloudinary_key
```

### Database Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Start a Server
```
rails s
```
## Authors

- [Bora Kim](https://www.github.com/noopaaniik)
- [Reina Kitazawa](https://www.github.com/ReinaKitazawa)
- [Chris Bound](https://www.github.com/cpbound)

