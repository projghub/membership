# Load the rails application
require File.expand_path('../application', __FILE__)

APPLICATION_NAME = 'Membership'

APPLICATION_DOMAINS = ['membership.apps.automationhero.com', 'membership.apps.lvh.me', 'staging.membership.apps.automationhero.com', 'staging.membership.apps.lvh.me']
WEBSITE_DOMAINS = ['membership.automationhero.com', 'membership.www.lvh.me', 'staging.membership.www.automationhero.com', 'staging.membership.www.lvh.me']

# Initialize the rails application
Membership::Application.initialize!
