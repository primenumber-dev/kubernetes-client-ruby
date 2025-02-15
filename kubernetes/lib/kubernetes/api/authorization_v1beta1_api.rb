=begin
#Kubernetes

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v1.13.4

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require "cgi"

module Kubernetes
  class AuthorizationV1beta1Api
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # create a LocalSubjectAccessReview
    # @param namespace object name and auth scope, such as for teams and projects
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
    # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
    # @return [V1beta1LocalSubjectAccessReview]
    def create_namespaced_local_subject_access_review(namespace, body, opts = {})
      data, _status_code, _headers = create_namespaced_local_subject_access_review_with_http_info(namespace, body, opts)
      return data
    end

    # 
    # create a LocalSubjectAccessReview
    # @param namespace object name and auth scope, such as for teams and projects
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
    # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
    # @return [Array<(V1beta1LocalSubjectAccessReview, Fixnum, Hash)>] V1beta1LocalSubjectAccessReview data, response status code and response headers
    def create_namespaced_local_subject_access_review_with_http_info(namespace, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthorizationV1beta1Api.create_namespaced_local_subject_access_review ..."
      end
      # verify the required parameter 'namespace' is set
      if @api_client.config.client_side_validation && namespace.nil?
        fail ArgumentError, "Missing the required parameter 'namespace' when calling AuthorizationV1beta1Api.create_namespaced_local_subject_access_review"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthorizationV1beta1Api.create_namespaced_local_subject_access_review"
      end
      # resource path
      local_var_path = "/apis/authorization.k8s.io/v1beta1/namespaces/{namespace}/localsubjectaccessreviews".sub('{' + 'namespace' + '}', CGI.escape(namespace.to_s))

      # query parameters
      query_params = {}
      query_params[:'dryRun'] = opts[:'dry_run'] if !opts[:'dry_run'].nil?
      query_params[:'includeUninitialized'] = opts[:'include_uninitialized'] if !opts[:'include_uninitialized'].nil?
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'V1beta1LocalSubjectAccessReview')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorizationV1beta1Api#create_namespaced_local_subject_access_review\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # create a SelfSubjectAccessReview
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
    # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
    # @return [V1beta1SelfSubjectAccessReview]
    def create_self_subject_access_review(body, opts = {})
      data, _status_code, _headers = create_self_subject_access_review_with_http_info(body, opts)
      return data
    end

    # 
    # create a SelfSubjectAccessReview
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
    # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
    # @return [Array<(V1beta1SelfSubjectAccessReview, Fixnum, Hash)>] V1beta1SelfSubjectAccessReview data, response status code and response headers
    def create_self_subject_access_review_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthorizationV1beta1Api.create_self_subject_access_review ..."
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthorizationV1beta1Api.create_self_subject_access_review"
      end
      # resource path
      local_var_path = "/apis/authorization.k8s.io/v1beta1/selfsubjectaccessreviews"

      # query parameters
      query_params = {}
      query_params[:'dryRun'] = opts[:'dry_run'] if !opts[:'dry_run'].nil?
      query_params[:'includeUninitialized'] = opts[:'include_uninitialized'] if !opts[:'include_uninitialized'].nil?
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'V1beta1SelfSubjectAccessReview')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorizationV1beta1Api#create_self_subject_access_review\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # create a SelfSubjectRulesReview
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
    # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
    # @return [V1beta1SelfSubjectRulesReview]
    def create_self_subject_rules_review(body, opts = {})
      data, _status_code, _headers = create_self_subject_rules_review_with_http_info(body, opts)
      return data
    end

    # 
    # create a SelfSubjectRulesReview
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
    # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
    # @return [Array<(V1beta1SelfSubjectRulesReview, Fixnum, Hash)>] V1beta1SelfSubjectRulesReview data, response status code and response headers
    def create_self_subject_rules_review_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthorizationV1beta1Api.create_self_subject_rules_review ..."
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthorizationV1beta1Api.create_self_subject_rules_review"
      end
      # resource path
      local_var_path = "/apis/authorization.k8s.io/v1beta1/selfsubjectrulesreviews"

      # query parameters
      query_params = {}
      query_params[:'dryRun'] = opts[:'dry_run'] if !opts[:'dry_run'].nil?
      query_params[:'includeUninitialized'] = opts[:'include_uninitialized'] if !opts[:'include_uninitialized'].nil?
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'V1beta1SelfSubjectRulesReview')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorizationV1beta1Api#create_self_subject_rules_review\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # create a SubjectAccessReview
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
    # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
    # @return [V1beta1SubjectAccessReview]
    def create_subject_access_review(body, opts = {})
      data, _status_code, _headers = create_subject_access_review_with_http_info(body, opts)
      return data
    end

    # 
    # create a SubjectAccessReview
    # @param body 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :dry_run When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
    # @option opts [BOOLEAN] :include_uninitialized If IncludeUninitialized is specified, the object may be returned without completing initialization.
    # @option opts [String] :pretty If &#39;true&#39;, then the output is pretty printed.
    # @return [Array<(V1beta1SubjectAccessReview, Fixnum, Hash)>] V1beta1SubjectAccessReview data, response status code and response headers
    def create_subject_access_review_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthorizationV1beta1Api.create_subject_access_review ..."
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthorizationV1beta1Api.create_subject_access_review"
      end
      # resource path
      local_var_path = "/apis/authorization.k8s.io/v1beta1/subjectaccessreviews"

      # query parameters
      query_params = {}
      query_params[:'dryRun'] = opts[:'dry_run'] if !opts[:'dry_run'].nil?
      query_params[:'includeUninitialized'] = opts[:'include_uninitialized'] if !opts[:'include_uninitialized'].nil?
      query_params[:'pretty'] = opts[:'pretty'] if !opts[:'pretty'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'V1beta1SubjectAccessReview')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorizationV1beta1Api#create_subject_access_review\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # get available resources
    # @param [Hash] opts the optional parameters
    # @return [V1APIResourceList]
    def get_api_resources(opts = {})
      data, _status_code, _headers = get_api_resources_with_http_info(opts)
      return data
    end

    # 
    # get available resources
    # @param [Hash] opts the optional parameters
    # @return [Array<(V1APIResourceList, Fixnum, Hash)>] V1APIResourceList data, response status code and response headers
    def get_api_resources_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AuthorizationV1beta1Api.get_api_resources ..."
      end
      # resource path
      local_var_path = "/apis/authorization.k8s.io/v1beta1/"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/yaml', 'application/vnd.kubernetes.protobuf'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BearerToken']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'V1APIResourceList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthorizationV1beta1Api#get_api_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
