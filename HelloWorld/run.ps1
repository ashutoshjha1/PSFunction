$result = [PSCustomObject][Ordered]@{
    'Status'    = 200
    'Headers'   = [PSCustomObject][Ordered]@{
                    'content-type' = 'application/json'
                  }
    'Body'      = [PSCustomObject][Ordered]@{
                    'Hello' = if([string]::IsNullOrWhiteSpace($REQ_QUERY_NAME)){ 'World' } else { $REQ_QUERY_NAME }
                  }
} | ConvertTo-Json -Depth 5

$result | Out-File -FilePath $response -Encoding utf8
