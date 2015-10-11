class LearningSessionForm
  include ActiveModel::Model

  SUBJECTS = {sociales: 'Estudios Sociales', espanol:'Español', matematicas:'Matemáticas', ciencias:'Ciencias',
              civica: 'Cívica', artes: 'Artes', musica: 'Música', idiomas: 'Idiomas'}.freeze

  attr_accessor :group, :subject, :topic, :professor

  validates :group, :subject, presence: true

  def persisted?
    false
  end

  def submit(attributes)
    self.attributes = attributes
    @ls = LearningSession.new
    if valid?
      @ls.group = Group.find(group)
      @ls.key_session = SecureRandom.base64(8)
    end
    @ls.save
    @ls
  end

  def attributes=(attributes)
    @group = attributes[:group]
    @subject = attributes[:subject]
    @professor = attributes[:professor]
  end
end