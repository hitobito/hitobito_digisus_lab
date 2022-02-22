

class Group::Parldigis < Group

  class NationalCouncil < Role::NationalCouncil
  end

  class StateCouncil < Role::StateCouncil
  end

  class Sponsorship < Role::Sponsorship
  end

  class Partner < Role::Partner
  end


  roles NationalCouncil, Partner, StateCouncil, Sponsorship

end
