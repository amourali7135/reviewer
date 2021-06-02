class Business < ApplicationRecord
  belongs_to :user, optional: true

  has_many :perks, dependent: :destroy
  has_many :services, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :recommendationslists #Can a dependent destroy fuck this up later for people?
  has_one :verificationqr, dependent: :destroy #plural or singular?
  # has_many :verificationqrs #, dependent: :destroy #plural or singular?  FUCK MY LIFE!
  has_one :schedule, dependent: :destroy #plural or singular?
  has_many :userqrs, dependent: :destroy
  has_many :interactionverifications


  validates :name, presence: true
  validates :phone, presence: true
  validates :address, presence: true
  validates :price_range, presence: true
  validates :about, presence: true
  validates :founded, presence: true
  validates :payments, presence: true
  validates :user_id, presence: true, if: :user_id_present?
  # validates :restaurant, presence: true

  has_many_attached :photos

  #Callback to automatically create a QR code for them.
  after_create :autocreateverificationqr

  private

  def self.health_safety
    ['Mask required', 'Temperature check required', 'Appointment required', 'Reservations required', 'Surfaces disinfected between visits', 'Staff wear masks', 'Staff get temperature checks', 'Social distancing enforced', 'Staff wears gloves', 'Hand sanitizer provided', 'Limited capacity', 'Temperature checks', 'Contactless menu']
  end

  def self.highlights
    ['Virtual estimates during COVID-19', 'Remote services during COVID-19', 'Curbside pickup during COVID-19', 'Mobile services during COVID-19', 'Gift cards during COVID-19', 'Shipping during COVID-19', 'Curbside drop-off during COVID-19', 'Online classes during COVID-19', 'Drive-thru during COVID-19', 'Locally owned & operated', 'Certified professional', 'year years in business', 'Family-owned & operated', 'Free estimate', 'Available by appointment', 'Satisfaction guarantee', 'Offers customized solutions', 'Free consultations', 'Women-owned & operated', 'Offers commercial service', 'Established in year', 'Speaks Spanish', 'Walk-ins welcome', 'Discounts available', 'Budget friendly', '24/7 Availability', 'Emergency service', 'Free parking', 'Free WiFi', 'Eco-friendly', 'Luxury', 'Kid friendly', 'Offers payment plan', 'Consultations available', 'Beat or match price', 'LGBTQ friendly', 'Minority-owned & operated', 'Results guarantee', 'Veteran-owned & operated', 'Pet friendly', 'References available', 'Boutique', 'Wheelchair accessible', 'Fixed pricing', 'Hourly pricing', 'number employee', 'Speaks Mandarin' ]
  end

  #what did this even mean?  
  def self.accessibility
    ['Wheelchair accessible entrance', 'Wheelchair-accessible restroom', 'Wheelchair-accessible seating', 'Wheelchair-accessible parking' ,'Service animal friendly', 'Braille available', 'Large print available', 'Handicapped bathrooms available', 'Handicapped parking available', 'No stairs needed for entry', 'Elevator available', 'Automatic door', 'Gender neutral bathroom', 'Outdoor access only', 'Ramp', 'Sign language available', '']
  end

  # This is the big one that you have to get from Yelp's giant list.
  def self.offerings
    []
  end

  def self.amenities
    []
  end

  def self.payments
    ['Cash Only', 'Credit Cards Accepted', 'Debit Cards Accepted', 'Venmo Accepted', 'Zelle Accepted', 'Bitcoin/Crypto Accepted', 'Paypal accepted']
  end

  def self.delivery_options
    ['In-house delivery available', 'Uber Eats available', 'Postmates available', 'DoorDash available', 'GrubHub available', 'Seamless available', 'Instacart available', 'No delivery options are available']
  end

  def self.service_options
    ["Dine-in", "Takeout", "Delivery", "No-contact delivery", "Curbside pickup", 'Outdoor dining', ]
  end

  def autocreateverificationqr
    Verificationqr.create(business_id: self.id)
  end

  def user_id_present?
    user_id.present?
  end

end
