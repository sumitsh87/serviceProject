json.array!(@requests) do |request|
  json.extract! request, :id, :userId, :defecttype, :defectdescription, :defectseverity, :requesteddate, :currentstatus, :requestresolvedate, :paymentamount
  json.url request_url(request, format: :json)
end
