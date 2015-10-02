task :reseed => :environment do
  # Reset everything
  Rake.application['db:drop'].invoke
  Rake.application['db:create'].invoke
  Rake.application['db:migrate'].invoke
  Rake.application['db:seed'].invoke
end
