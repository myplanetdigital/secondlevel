core = 7.x
api = 2

; Include the definition for how to build/patch Drupal core directly
includes[] = drupal-org-core.make

projects[2ndlevel][type] = profile
projects[2ndlevel][download][type] = git
projects[2ndlevel][download][url] = https://github.com/myplanetdigital/2ndleveldeep.git
projects[2ndlevel][download][revision] = develop
