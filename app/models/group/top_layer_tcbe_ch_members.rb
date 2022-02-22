
class Group::TopLayerTcbeChMembers < Group::TcbeChMembers
  children TopLayerTcbeChMembers, TopLayerContacts, TopLayerCommittee
end
