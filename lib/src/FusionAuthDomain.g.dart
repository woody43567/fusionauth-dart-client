// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FusionAuthDomain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessToken _$AccessTokenFromJson(Map<String, dynamic> json) => AccessToken(
      access_token: json['access_token'] as String,
      expires_in: json['expires_in'] as num,
      id_token: json['id_token'] as String,
      refresh_token: json['refresh_token'] as String,
      refresh_token_id: json['refresh_token_id'] as String,
      scope: json['scope'] as String,
      token_type: _$enumDecode(_$TokenTypeEnumMap, json['token_type']),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$AccessTokenToJson(AccessToken instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'expires_in': instance.expires_in,
      'id_token': instance.id_token,
      'refresh_token': instance.refresh_token,
      'refresh_token_id': instance.refresh_token_id,
      'scope': instance.scope,
      'token_type': _$TokenTypeEnumMap[instance.token_type],
      'userId': instance.userId,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$TokenTypeEnumMap = {
  TokenType.Bearer: 'Bearer',
  TokenType.MAC: 'MAC',
};

ActionData _$ActionDataFromJson(Map<String, dynamic> json) => ActionData(
      actioneeUserId: json['actioneeUserId'] as String,
      actionerUserId: json['actionerUserId'] as String,
      applicationIds: (json['applicationIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      comment: json['comment'] as String,
      emailUser: json['emailUser'] as bool,
      expiry: json['expiry'] as num,
      notifyUser: json['notifyUser'] as bool,
      option: json['option'] as String,
      reasonId: json['reasonId'] as String,
      userActionId: json['userActionId'] as String,
    );

Map<String, dynamic> _$ActionDataToJson(ActionData instance) =>
    <String, dynamic>{
      'actioneeUserId': instance.actioneeUserId,
      'actionerUserId': instance.actionerUserId,
      'applicationIds': instance.applicationIds,
      'comment': instance.comment,
      'emailUser': instance.emailUser,
      'expiry': instance.expiry,
      'notifyUser': instance.notifyUser,
      'option': instance.option,
      'reasonId': instance.reasonId,
      'userActionId': instance.userActionId,
    };

ActionRequest _$ActionRequestFromJson(Map<String, dynamic> json) =>
    ActionRequest(
      action: ActionData.fromJson(json['action'] as Map<String, dynamic>),
      broadcast: json['broadcast'] as bool? ?? false,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$ActionRequestToJson(ActionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  val['action'] = instance.action;
  val['broadcast'] = instance.broadcast;
  return val;
}

ActionResponse _$ActionResponseFromJson(Map<String, dynamic> json) =>
    ActionResponse(
      action: UserActionLog.fromJson(json['action'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>)
          .map((e) => UserActionLog.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ActionResponseToJson(ActionResponse instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actions': instance.actions,
    };

APIKey _$APIKeyFromJson(Map<String, dynamic> json) => APIKey(
      id: json['id'] as String,
      insertInstant: json['insertInstant'] as num,
      ipAccessControlListId: json['ipAccessControlListId'] as String,
      key: json['key'] as String,
      keyManager: json['keyManager'] as bool,
      lastUpdateInstant: json['lastUpdateInstant'] as num,
      metaData:
          APIKeyMetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      permissions: APIKeyPermissions.fromJson(
          json['permissions'] as Map<String, dynamic>),
      tenantId: json['tenantId'] as String,
    );

Map<String, dynamic> _$APIKeyToJson(APIKey instance) => <String, dynamic>{
      'id': instance.id,
      'insertInstant': instance.insertInstant,
      'ipAccessControlListId': instance.ipAccessControlListId,
      'key': instance.key,
      'keyManager': instance.keyManager,
      'lastUpdateInstant': instance.lastUpdateInstant,
      'metaData': instance.metaData,
      'permissions': instance.permissions,
      'tenantId': instance.tenantId,
    };

APIKeyMetaData _$APIKeyMetaDataFromJson(Map<String, dynamic> json) =>
    APIKeyMetaData(
      attributes: Map<String, String>.from(json['attributes'] as Map),
    );

Map<String, dynamic> _$APIKeyMetaDataToJson(APIKeyMetaData instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };

APIKeyPermissions _$APIKeyPermissionsFromJson(Map<String, dynamic> json) =>
    APIKeyPermissions(
      endpoints: (json['endpoints'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toSet()),
      ),
    );

Map<String, dynamic> _$APIKeyPermissionsToJson(APIKeyPermissions instance) =>
    <String, dynamic>{
      'endpoints': instance.endpoints.map((k, e) => MapEntry(k, e.toList())),
    };

APIKeyRequest _$APIKeyRequestFromJson(Map<String, dynamic> json) =>
    APIKeyRequest(
      apiKey: APIKey.fromJson(json['apiKey'] as Map<String, dynamic>),
      sourceKeyId: json['sourceKeyId'] as String,
    );

Map<String, dynamic> _$APIKeyRequestToJson(APIKeyRequest instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'sourceKeyId': instance.sourceKeyId,
    };

APIKeyResponse _$APIKeyResponseFromJson(Map<String, dynamic> json) =>
    APIKeyResponse(
      apiKey: APIKey.fromJson(json['apiKey'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$APIKeyResponseToJson(APIKeyResponse instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
    };

AppleApplicationConfiguration _$AppleApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    AppleApplicationConfiguration(
      buttonText: json['buttonText'] as String,
      keyId: json['keyId'] as String,
      scope: json['scope'] as String,
      servicesId: json['servicesId'] as String,
      teamId: json['teamId'] as String,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$AppleApplicationConfigurationToJson(
    AppleApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  val['buttonText'] = instance.buttonText;
  val['keyId'] = instance.keyId;
  val['scope'] = instance.scope;
  val['servicesId'] = instance.servicesId;
  val['teamId'] = instance.teamId;
  return val;
}

AppleIdentityProvider _$AppleIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    AppleIdentityProvider(
      buttonText: json['buttonText'] as String,
      keyId: json['keyId'] as String,
      scope: json['scope'] as String,
      servicesId: json['servicesId'] as String,
      teamId: json['teamId'] as String,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            AppleApplicationConfiguration.fromJson(e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$AppleIdentityProviderToJson(
    AppleIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  val['buttonText'] = instance.buttonText;
  val['keyId'] = instance.keyId;
  val['scope'] = instance.scope;
  val['servicesId'] = instance.servicesId;
  val['teamId'] = instance.teamId;
  return val;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$IdentityProviderLinkingStrategyEnumMap = {
  IdentityProviderLinkingStrategy.CreatePendingLink: 'CreatePendingLink',
  IdentityProviderLinkingStrategy.Disabled: 'Disabled',
  IdentityProviderLinkingStrategy.LinkAnonymously: 'LinkAnonymously',
  IdentityProviderLinkingStrategy.LinkByEmail: 'LinkByEmail',
  IdentityProviderLinkingStrategy.LinkByEmailForExistingUser:
      'LinkByEmailForExistingUser',
  IdentityProviderLinkingStrategy.LinkByUsername: 'LinkByUsername',
  IdentityProviderLinkingStrategy.LinkByUsernameForExistingUser:
      'LinkByUsernameForExistingUser',
  IdentityProviderLinkingStrategy.Unsupported: 'Unsupported',
};

const _$IdentityProviderTypeEnumMap = {
  IdentityProviderType.Apple: 'Apple',
  IdentityProviderType.EpicGames: 'EpicGames',
  IdentityProviderType.ExternalJWT: 'ExternalJWT',
  IdentityProviderType.Facebook: 'Facebook',
  IdentityProviderType.Google: 'Google',
  IdentityProviderType.HYPR: 'HYPR',
  IdentityProviderType.LinkedIn: 'LinkedIn',
  IdentityProviderType.Nintendo: 'Nintendo',
  IdentityProviderType.OpenIDConnect: 'OpenIDConnect',
  IdentityProviderType.SAMLv2: 'SAMLv2',
  IdentityProviderType.SAMLv2IdPInitiated: 'SAMLv2IdPInitiated',
  IdentityProviderType.SonyPSN: 'SonyPSN',
  IdentityProviderType.Steam: 'Steam',
  IdentityProviderType.Twitch: 'Twitch',
  IdentityProviderType.Twitter: 'Twitter',
  IdentityProviderType.Xbox: 'Xbox',
};

Application _$ApplicationFromJson(Map<String, dynamic> json) => Application(
      accessControlConfiguration:
          ApplicationAccessControlConfiguration.fromJson(
              json['accessControlConfiguration'] as Map<String, dynamic>),
      active: json['active'] as bool,
      authenticationTokenConfiguration:
          AuthenticationTokenConfiguration.fromJson(
              json['authenticationTokenConfiguration'] as Map<String, dynamic>),
      cleanSpeakConfiguration: CleanSpeakConfiguration.fromJson(
          json['cleanSpeakConfiguration'] as Map<String, dynamic>),
      data: json['data'] as Map<String, dynamic>,
      emailConfiguration: ApplicationEmailConfiguration.fromJson(
          json['emailConfiguration'] as Map<String, dynamic>),
      externalIdentifierConfiguration:
          ApplicationExternalIdentifierConfiguration.fromJson(
              json['externalIdentifierConfiguration'] as Map<String, dynamic>),
      formConfiguration: ApplicationFormConfiguration.fromJson(
          json['formConfiguration'] as Map<String, dynamic>),
      id: json['id'] as String,
      insertInstant: json['insertInstant'] as num,
      jwtConfiguration: JWTConfiguration.fromJson(
          json['jwtConfiguration'] as Map<String, dynamic>),
      lambdaConfiguration: json['lambdaConfiguration'],
      lastUpdateInstant: json['lastUpdateInstant'] as num,
      loginConfiguration: LoginConfiguration.fromJson(
          json['loginConfiguration'] as Map<String, dynamic>),
      multiFactorConfiguration: ApplicationMultiFactorConfiguration.fromJson(
          json['multiFactorConfiguration'] as Map<String, dynamic>),
      name: json['name'] as String,
      oauthConfiguration: OAuth2Configuration.fromJson(
          json['oauthConfiguration'] as Map<String, dynamic>),
      passwordlessConfiguration: PasswordlessConfiguration.fromJson(
          json['passwordlessConfiguration'] as Map<String, dynamic>),
      registrationConfiguration: RegistrationConfiguration.fromJson(
          json['registrationConfiguration'] as Map<String, dynamic>),
      registrationDeletePolicy: ApplicationRegistrationDeletePolicy.fromJson(
          json['registrationDeletePolicy'] as Map<String, dynamic>),
      roles: (json['roles'] as List<dynamic>)
          .map((e) => ApplicationRole.fromJson(e as Map<String, dynamic>))
          .toList(),
      samlv2Configuration: SAMLv2Configuration.fromJson(
          json['samlv2Configuration'] as Map<String, dynamic>),
      state: _$enumDecode(_$ObjectStateEnumMap, json['state']),
      tenantId: json['tenantId'] as String,
      themeId: json['themeId'] as String,
      unverified: RegistrationUnverifiedOptions.fromJson(
          json['unverified'] as Map<String, dynamic>),
      verificationEmailTemplateId:
          json['verificationEmailTemplateId'] as String,
      verificationStrategy: _$enumDecode(
          _$VerificationStrategyEnumMap, json['verificationStrategy']),
      verifyRegistration: json['verifyRegistration'] as bool,
      webAuthnConfiguration: ApplicationWebAuthnConfiguration.fromJson(
          json['webAuthnConfiguration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationToJson(Application instance) {
  final val = <String, dynamic>{
    'accessControlConfiguration': instance.accessControlConfiguration,
    'active': instance.active,
    'authenticationTokenConfiguration':
        instance.authenticationTokenConfiguration,
    'cleanSpeakConfiguration': instance.cleanSpeakConfiguration,
    'data': instance.data,
    'emailConfiguration': instance.emailConfiguration,
    'externalIdentifierConfiguration': instance.externalIdentifierConfiguration,
    'formConfiguration': instance.formConfiguration,
    'id': instance.id,
    'insertInstant': instance.insertInstant,
    'jwtConfiguration': instance.jwtConfiguration,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  val['lastUpdateInstant'] = instance.lastUpdateInstant;
  val['loginConfiguration'] = instance.loginConfiguration;
  val['multiFactorConfiguration'] = instance.multiFactorConfiguration;
  val['name'] = instance.name;
  val['oauthConfiguration'] = instance.oauthConfiguration;
  val['passwordlessConfiguration'] = instance.passwordlessConfiguration;
  val['registrationConfiguration'] = instance.registrationConfiguration;
  val['registrationDeletePolicy'] = instance.registrationDeletePolicy;
  val['roles'] = instance.roles;
  val['samlv2Configuration'] = instance.samlv2Configuration;
  val['state'] = _$ObjectStateEnumMap[instance.state];
  val['tenantId'] = instance.tenantId;
  val['themeId'] = instance.themeId;
  val['unverified'] = instance.unverified;
  val['verificationEmailTemplateId'] = instance.verificationEmailTemplateId;
  val['verificationStrategy'] =
      _$VerificationStrategyEnumMap[instance.verificationStrategy];
  val['verifyRegistration'] = instance.verifyRegistration;
  val['webAuthnConfiguration'] = instance.webAuthnConfiguration;
  return val;
}

const _$ObjectStateEnumMap = {
  ObjectState.Active: 'Active',
  ObjectState.Inactive: 'Inactive',
  ObjectState.PendingDelete: 'PendingDelete',
};

const _$VerificationStrategyEnumMap = {
  VerificationStrategy.ClickableLink: 'ClickableLink',
  VerificationStrategy.FormField: 'FormField',
};

ApplicationAccessControlConfiguration
    _$ApplicationAccessControlConfigurationFromJson(
            Map<String, dynamic> json) =>
        ApplicationAccessControlConfiguration(
          uiIPAccessControlListId: json['uiIPAccessControlListId'] as String,
        );

Map<String, dynamic> _$ApplicationAccessControlConfigurationToJson(
        ApplicationAccessControlConfiguration instance) =>
    <String, dynamic>{
      'uiIPAccessControlListId': instance.uiIPAccessControlListId,
    };

ApplicationEmailConfiguration _$ApplicationEmailConfigurationFromJson(
        Map<String, dynamic> json) =>
    ApplicationEmailConfiguration(
      emailUpdateEmailTemplateId: json['emailUpdateEmailTemplateId'] as String,
      emailVerificationEmailTemplateId:
          json['emailVerificationEmailTemplateId'] as String,
      emailVerifiedEmailTemplateId:
          json['emailVerifiedEmailTemplateId'] as String,
      forgotPasswordEmailTemplateId:
          json['forgotPasswordEmailTemplateId'] as String,
      loginIdInUseOnCreateEmailTemplateId:
          json['loginIdInUseOnCreateEmailTemplateId'] as String,
      loginIdInUseOnUpdateEmailTemplateId:
          json['loginIdInUseOnUpdateEmailTemplateId'] as String,
      loginNewDeviceEmailTemplateId:
          json['loginNewDeviceEmailTemplateId'] as String,
      loginSuspiciousEmailTemplateId:
          json['loginSuspiciousEmailTemplateId'] as String,
      passwordlessEmailTemplateId:
          json['passwordlessEmailTemplateId'] as String,
      passwordResetSuccessEmailTemplateId:
          json['passwordResetSuccessEmailTemplateId'] as String,
      passwordUpdateEmailTemplateId:
          json['passwordUpdateEmailTemplateId'] as String,
      setPasswordEmailTemplateId: json['setPasswordEmailTemplateId'] as String,
      twoFactorMethodAddEmailTemplateId:
          json['twoFactorMethodAddEmailTemplateId'] as String,
      twoFactorMethodRemoveEmailTemplateId:
          json['twoFactorMethodRemoveEmailTemplateId'] as String,
    );

Map<String, dynamic> _$ApplicationEmailConfigurationToJson(
        ApplicationEmailConfiguration instance) =>
    <String, dynamic>{
      'emailUpdateEmailTemplateId': instance.emailUpdateEmailTemplateId,
      'emailVerificationEmailTemplateId':
          instance.emailVerificationEmailTemplateId,
      'emailVerifiedEmailTemplateId': instance.emailVerifiedEmailTemplateId,
      'forgotPasswordEmailTemplateId': instance.forgotPasswordEmailTemplateId,
      'loginIdInUseOnCreateEmailTemplateId':
          instance.loginIdInUseOnCreateEmailTemplateId,
      'loginIdInUseOnUpdateEmailTemplateId':
          instance.loginIdInUseOnUpdateEmailTemplateId,
      'loginNewDeviceEmailTemplateId': instance.loginNewDeviceEmailTemplateId,
      'loginSuspiciousEmailTemplateId': instance.loginSuspiciousEmailTemplateId,
      'passwordlessEmailTemplateId': instance.passwordlessEmailTemplateId,
      'passwordResetSuccessEmailTemplateId':
          instance.passwordResetSuccessEmailTemplateId,
      'passwordUpdateEmailTemplateId': instance.passwordUpdateEmailTemplateId,
      'setPasswordEmailTemplateId': instance.setPasswordEmailTemplateId,
      'twoFactorMethodAddEmailTemplateId':
          instance.twoFactorMethodAddEmailTemplateId,
      'twoFactorMethodRemoveEmailTemplateId':
          instance.twoFactorMethodRemoveEmailTemplateId,
    };

ApplicationEvent _$ApplicationEventFromJson(Map<String, dynamic> json) =>
    ApplicationEvent();

Map<String, dynamic> _$ApplicationEventToJson(ApplicationEvent instance) =>
    <String, dynamic>{};

ApplicationExternalIdentifierConfiguration
    _$ApplicationExternalIdentifierConfigurationFromJson(
            Map<String, dynamic> json) =>
        ApplicationExternalIdentifierConfiguration(
          twoFactorTrustIdTimeToLiveInSeconds:
              json['twoFactorTrustIdTimeToLiveInSeconds'] as num,
        );

Map<String, dynamic> _$ApplicationExternalIdentifierConfigurationToJson(
        ApplicationExternalIdentifierConfiguration instance) =>
    <String, dynamic>{
      'twoFactorTrustIdTimeToLiveInSeconds':
          instance.twoFactorTrustIdTimeToLiveInSeconds,
    };

ApplicationFormConfiguration _$ApplicationFormConfigurationFromJson(
        Map<String, dynamic> json) =>
    ApplicationFormConfiguration(
      adminRegistrationFormId: json['adminRegistrationFormId'] as String,
      selfServiceFormId: json['selfServiceFormId'] as String,
    );

Map<String, dynamic> _$ApplicationFormConfigurationToJson(
        ApplicationFormConfiguration instance) =>
    <String, dynamic>{
      'adminRegistrationFormId': instance.adminRegistrationFormId,
      'selfServiceFormId': instance.selfServiceFormId,
    };

ApplicationMultiFactorConfiguration
    _$ApplicationMultiFactorConfigurationFromJson(Map<String, dynamic> json) =>
        ApplicationMultiFactorConfiguration(
          email: MultiFactorEmailTemplate.fromJson(
              json['email'] as Map<String, dynamic>),
          loginPolicy: _$enumDecode(
              _$MultiFactorLoginPolicyEnumMap, json['loginPolicy']),
          sms: MultiFactorSMSTemplate.fromJson(
              json['sms'] as Map<String, dynamic>),
          trustPolicy: _$enumDecode(
              _$ApplicationMultiFactorTrustPolicyEnumMap, json['trustPolicy']),
        );

Map<String, dynamic> _$ApplicationMultiFactorConfigurationToJson(
        ApplicationMultiFactorConfiguration instance) =>
    <String, dynamic>{
      'email': instance.email,
      'loginPolicy': _$MultiFactorLoginPolicyEnumMap[instance.loginPolicy],
      'sms': instance.sms,
      'trustPolicy':
          _$ApplicationMultiFactorTrustPolicyEnumMap[instance.trustPolicy],
    };

const _$MultiFactorLoginPolicyEnumMap = {
  MultiFactorLoginPolicy.Disabled: 'Disabled',
  MultiFactorLoginPolicy.Enabled: 'Enabled',
  MultiFactorLoginPolicy.Required: 'Required',
};

const _$ApplicationMultiFactorTrustPolicyEnumMap = {
  ApplicationMultiFactorTrustPolicy.Any: 'Any',
  ApplicationMultiFactorTrustPolicy.This: 'This',
  ApplicationMultiFactorTrustPolicy.None: 'None',
};

ApplicationRegistrationDeletePolicy
    _$ApplicationRegistrationDeletePolicyFromJson(Map<String, dynamic> json) =>
        ApplicationRegistrationDeletePolicy(
          unverified: TimeBasedDeletePolicy.fromJson(
              json['unverified'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ApplicationRegistrationDeletePolicyToJson(
        ApplicationRegistrationDeletePolicy instance) =>
    <String, dynamic>{
      'unverified': instance.unverified,
    };

ApplicationRequest _$ApplicationRequestFromJson(Map<String, dynamic> json) =>
    ApplicationRequest(
      application:
          Application.fromJson(json['application'] as Map<String, dynamic>),
      role: ApplicationRole.fromJson(json['role'] as Map<String, dynamic>),
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$ApplicationRequestToJson(ApplicationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  val['application'] = instance.application;
  val['role'] = instance.role;
  return val;
}

ApplicationResponse _$ApplicationResponseFromJson(Map<String, dynamic> json) =>
    ApplicationResponse(
      application:
          Application.fromJson(json['application'] as Map<String, dynamic>),
      applications: (json['applications'] as List<dynamic>)
          .map((e) => Application.fromJson(e as Map<String, dynamic>))
          .toList(),
      role: ApplicationRole.fromJson(json['role'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationResponseToJson(
        ApplicationResponse instance) =>
    <String, dynamic>{
      'application': instance.application,
      'applications': instance.applications,
      'role': instance.role,
    };

ApplicationRole _$ApplicationRoleFromJson(Map<String, dynamic> json) =>
    ApplicationRole(
      description: json['description'] as String,
      id: json['id'] as String,
      insertInstant: json['insertInstant'] as num,
      isDefault: json['isDefault'] as bool,
      isSuperRole: json['isSuperRole'] as bool,
      lastUpdateInstant: json['lastUpdateInstant'] as num,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ApplicationRoleToJson(ApplicationRole instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'insertInstant': instance.insertInstant,
      'isDefault': instance.isDefault,
      'isSuperRole': instance.isSuperRole,
      'lastUpdateInstant': instance.lastUpdateInstant,
      'name': instance.name,
    };

ApplicationUnverifiedConfiguration _$ApplicationUnverifiedConfigurationFromJson(
        Map<String, dynamic> json) =>
    ApplicationUnverifiedConfiguration(
      registration:
          _$enumDecode(_$UnverifiedBehaviorEnumMap, json['registration']),
      verificationStrategy: _$enumDecode(
          _$VerificationStrategyEnumMap, json['verificationStrategy']),
      whenGated: RegistrationUnverifiedOptions.fromJson(
          json['whenGated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApplicationUnverifiedConfigurationToJson(
        ApplicationUnverifiedConfiguration instance) =>
    <String, dynamic>{
      'registration': _$UnverifiedBehaviorEnumMap[instance.registration],
      'verificationStrategy':
          _$VerificationStrategyEnumMap[instance.verificationStrategy],
      'whenGated': instance.whenGated,
    };

const _$UnverifiedBehaviorEnumMap = {
  UnverifiedBehavior.Allow: 'Allow',
  UnverifiedBehavior.Gated: 'Gated',
};

ApplicationWebAuthnConfiguration _$ApplicationWebAuthnConfigurationFromJson(
        Map<String, dynamic> json) =>
    ApplicationWebAuthnConfiguration(
      bootstrapWorkflow: json['bootstrapWorkflow'] == null
          ? null
          : ApplicationWebAuthnWorkflowConfiguration.fromJson(
              json['bootstrapWorkflow'] as Map<String, dynamic>),
      reauthenticationWorkflow: json['reauthenticationWorkflow'] == null
          ? null
          : ApplicationWebAuthnWorkflowConfiguration.fromJson(
              json['reauthenticationWorkflow'] as Map<String, dynamic>),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$ApplicationWebAuthnConfigurationToJson(
    ApplicationWebAuthnConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('bootstrapWorkflow', instance.bootstrapWorkflow);
  writeNotNull('reauthenticationWorkflow', instance.reauthenticationWorkflow);
  return val;
}

ApplicationWebAuthnWorkflowConfiguration
    _$ApplicationWebAuthnWorkflowConfigurationFromJson(
            Map<String, dynamic> json) =>
        ApplicationWebAuthnWorkflowConfiguration()
          ..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$ApplicationWebAuthnWorkflowConfigurationToJson(
    ApplicationWebAuthnWorkflowConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  return val;
}

Attachment _$AttachmentFromJson(Map<String, dynamic> json) => Attachment(
      attachment:
          (json['attachment'] as List<dynamic>).map((e) => e as num).toList(),
      mime: json['mime'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$AttachmentToJson(Attachment instance) =>
    <String, dynamic>{
      'attachment': instance.attachment,
      'mime': instance.mime,
      'name': instance.name,
    };

AuditLog _$AuditLogFromJson(Map<String, dynamic> json) => AuditLog(
      data: json['data'] as Map<String, dynamic>,
      id: json['id'] as num,
      insertInstant: json['insertInstant'] as num,
      insertUser: json['insertUser'] as String,
      message: json['message'] as String,
      newValue: json['newValue'],
      oldValue: json['oldValue'],
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$AuditLogToJson(AuditLog instance) {
  final val = <String, dynamic>{
    'data': instance.data,
    'id': instance.id,
    'insertInstant': instance.insertInstant,
    'insertUser': instance.insertUser,
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('newValue', instance.newValue);
  writeNotNull('oldValue', instance.oldValue);
  val['reason'] = instance.reason;
  return val;
}

AuditLogConfiguration _$AuditLogConfigurationFromJson(
        Map<String, dynamic> json) =>
    AuditLogConfiguration(
      delete:
          DeleteConfiguration.fromJson(json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuditLogConfigurationToJson(
        AuditLogConfiguration instance) =>
    <String, dynamic>{
      'delete': instance.delete,
    };

AuditLogCreateEvent _$AuditLogCreateEventFromJson(Map<String, dynamic> json) =>
    AuditLogCreateEvent(
      auditLog: AuditLog.fromJson(json['auditLog'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$AuditLogCreateEventToJson(AuditLogCreateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  val['auditLog'] = instance.auditLog;
  return val;
}

const _$EventTypeEnumMap = {
  EventType.JWTPublicKeyUpdate: 'JWTPublicKeyUpdate',
  EventType.JWTRefreshTokenRevoke: 'JWTRefreshTokenRevoke',
  EventType.JWTRefresh: 'JWTRefresh',
  EventType.AuditLogCreate: 'AuditLogCreate',
  EventType.EventLogCreate: 'EventLogCreate',
  EventType.KickstartSuccess: 'KickstartSuccess',
  EventType.GroupCreate: 'GroupCreate',
  EventType.GroupCreateComplete: 'GroupCreateComplete',
  EventType.GroupDelete: 'GroupDelete',
  EventType.GroupDeleteComplete: 'GroupDeleteComplete',
  EventType.GroupMemberAdd: 'GroupMemberAdd',
  EventType.GroupMemberAddComplete: 'GroupMemberAddComplete',
  EventType.GroupMemberRemove: 'GroupMemberRemove',
  EventType.GroupMemberRemoveComplete: 'GroupMemberRemoveComplete',
  EventType.GroupMemberUpdate: 'GroupMemberUpdate',
  EventType.GroupMemberUpdateComplete: 'GroupMemberUpdateComplete',
  EventType.GroupUpdate: 'GroupUpdate',
  EventType.GroupUpdateComplete: 'GroupUpdateComplete',
  EventType.UserAction: 'UserAction',
  EventType.UserBulkCreate: 'UserBulkCreate',
  EventType.UserCreate: 'UserCreate',
  EventType.UserCreateComplete: 'UserCreateComplete',
  EventType.UserDeactivate: 'UserDeactivate',
  EventType.UserDelete: 'UserDelete',
  EventType.UserDeleteComplete: 'UserDeleteComplete',
  EventType.UserEmailUpdate: 'UserEmailUpdate',
  EventType.UserEmailVerified: 'UserEmailVerified',
  EventType.UserIdentityProviderLink: 'UserIdentityProviderLink',
  EventType.UserIdentityProviderUnlink: 'UserIdentityProviderUnlink',
  EventType.UserLoginIdDuplicateOnCreate: 'UserLoginIdDuplicateOnCreate',
  EventType.UserLoginIdDuplicateOnUpdate: 'UserLoginIdDuplicateOnUpdate',
  EventType.UserLoginFailed: 'UserLoginFailed',
  EventType.UserLoginNewDevice: 'UserLoginNewDevice',
  EventType.UserLoginSuccess: 'UserLoginSuccess',
  EventType.UserLoginSuspicious: 'UserLoginSuspicious',
  EventType.UserPasswordBreach: 'UserPasswordBreach',
  EventType.UserPasswordResetSend: 'UserPasswordResetSend',
  EventType.UserPasswordResetStart: 'UserPasswordResetStart',
  EventType.UserPasswordResetSuccess: 'UserPasswordResetSuccess',
  EventType.UserPasswordUpdate: 'UserPasswordUpdate',
  EventType.UserReactivate: 'UserReactivate',
  EventType.UserRegistrationCreate: 'UserRegistrationCreate',
  EventType.UserRegistrationCreateComplete: 'UserRegistrationCreateComplete',
  EventType.UserRegistrationDelete: 'UserRegistrationDelete',
  EventType.UserRegistrationDeleteComplete: 'UserRegistrationDeleteComplete',
  EventType.UserRegistrationUpdate: 'UserRegistrationUpdate',
  EventType.UserRegistrationUpdateComplete: 'UserRegistrationUpdateComplete',
  EventType.UserRegistrationVerified: 'UserRegistrationVerified',
  EventType.UserTwoFactorMethodAdd: 'UserTwoFactorMethodAdd',
  EventType.UserTwoFactorMethodRemove: 'UserTwoFactorMethodRemove',
  EventType.UserUpdate: 'UserUpdate',
  EventType.UserUpdateComplete: 'UserUpdateComplete',
  EventType.Test: 'Test',
};

AuditLogExportRequest _$AuditLogExportRequestFromJson(
        Map<String, dynamic> json) =>
    AuditLogExportRequest(
      criteria: json['criteria'] == null
          ? null
          : AuditLogSearchCriteria.fromJson(
              json['criteria'] as Map<String, dynamic>),
    )
      ..dateTimeSecondsFormat = json['dateTimeSecondsFormat'] as String?
      ..zoneId = json['zoneId'] as String?;

Map<String, dynamic> _$AuditLogExportRequestToJson(
    AuditLogExportRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dateTimeSecondsFormat', instance.dateTimeSecondsFormat);
  writeNotNull('zoneId', instance.zoneId);
  writeNotNull('criteria', instance.criteria);
  return val;
}

AuditLogRequest _$AuditLogRequestFromJson(Map<String, dynamic> json) =>
    AuditLogRequest(
      auditLog: json['auditLog'] == null
          ? null
          : AuditLog.fromJson(json['auditLog'] as Map<String, dynamic>),
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$AuditLogRequestToJson(AuditLogRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('auditLog', instance.auditLog);
  return val;
}

AuditLogResponse _$AuditLogResponseFromJson(Map<String, dynamic> json) =>
    AuditLogResponse(
      auditLog: json['auditLog'] == null
          ? null
          : AuditLog.fromJson(json['auditLog'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuditLogResponseToJson(AuditLogResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auditLog', instance.auditLog);
  return val;
}

AuditLogSearchCriteria _$AuditLogSearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    AuditLogSearchCriteria(
      end: json['end'] as num?,
      message: json['message'] as String?,
      newValue: json['newValue'] as String?,
      oldValue: json['oldValue'] as String?,
      reason: json['reason'] as String?,
      start: json['start'] as num?,
      user: json['user'] as String?,
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$AuditLogSearchCriteriaToJson(
    AuditLogSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('end', instance.end);
  writeNotNull('message', instance.message);
  writeNotNull('newValue', instance.newValue);
  writeNotNull('oldValue', instance.oldValue);
  writeNotNull('reason', instance.reason);
  writeNotNull('start', instance.start);
  writeNotNull('user', instance.user);
  return val;
}

AuditLogSearchRequest _$AuditLogSearchRequestFromJson(
        Map<String, dynamic> json) =>
    AuditLogSearchRequest(
      search: AuditLogSearchCriteria.fromJson(
          json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuditLogSearchRequestToJson(
        AuditLogSearchRequest instance) =>
    <String, dynamic>{
      'search': instance.search,
    };

AuditLogSearchResponse _$AuditLogSearchResponseFromJson(
        Map<String, dynamic> json) =>
    AuditLogSearchResponse(
      auditLogs: (json['auditLogs'] as List<dynamic>)
          .map((e) => AuditLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num,
    );

Map<String, dynamic> _$AuditLogSearchResponseToJson(
        AuditLogSearchResponse instance) =>
    <String, dynamic>{
      'auditLogs': instance.auditLogs,
      'total': instance.total,
    };

AuthenticationTokenConfiguration _$AuthenticationTokenConfigurationFromJson(
        Map<String, dynamic> json) =>
    AuthenticationTokenConfiguration()..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$AuthenticationTokenConfigurationToJson(
    AuthenticationTokenConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  return val;
}

AuthenticatorConfiguration _$AuthenticatorConfigurationFromJson(
        Map<String, dynamic> json) =>
    AuthenticatorConfiguration(
      algorithm:
          _$enumDecodeNullable(_$TOTPAlgorithmEnumMap, json['algorithm']),
      codeLength: json['codeLength'] as num?,
      timeStep: json['timeStep'] as num?,
    );

Map<String, dynamic> _$AuthenticatorConfigurationToJson(
    AuthenticatorConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('algorithm', _$TOTPAlgorithmEnumMap[instance.algorithm]);
  writeNotNull('codeLength', instance.codeLength);
  writeNotNull('timeStep', instance.timeStep);
  return val;
}

const _$TOTPAlgorithmEnumMap = {
  TOTPAlgorithm.HmacSHA1: 'HmacSHA1',
  TOTPAlgorithm.HmacSHA256: 'HmacSHA256',
  TOTPAlgorithm.HmacSHA512: 'HmacSHA512',
};

AuthenticatorSelectionCriteria _$AuthenticatorSelectionCriteriaFromJson(
        Map<String, dynamic> json) =>
    AuthenticatorSelectionCriteria(
      authenticatorAttachment: _$enumDecode(
          _$AuthenticatorAttachmentEnumMap, json['authenticatorAttachment']),
      requireResidentKey: json['requireResidentKey'] as bool,
      residentKey:
          _$enumDecode(_$ResidentKeyRequirementEnumMap, json['residentKey']),
      userVerification: _$enumDecodeNullable(
          _$UserVerificationRequirementEnumMap, json['userVerification']),
    );

Map<String, dynamic> _$AuthenticatorSelectionCriteriaToJson(
    AuthenticatorSelectionCriteria instance) {
  final val = <String, dynamic>{
    'authenticatorAttachment':
        _$AuthenticatorAttachmentEnumMap[instance.authenticatorAttachment],
    'requireResidentKey': instance.requireResidentKey,
    'residentKey': _$ResidentKeyRequirementEnumMap[instance.residentKey],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userVerification',
      _$UserVerificationRequirementEnumMap[instance.userVerification]);
  return val;
}

const _$AuthenticatorAttachmentEnumMap = {
  AuthenticatorAttachment.platform: 'platform',
  AuthenticatorAttachment.crossPlatform: 'crossPlatform',
};

const _$ResidentKeyRequirementEnumMap = {
  ResidentKeyRequirement.discouraged: 'discouraged',
  ResidentKeyRequirement.preferred: 'preferred',
  ResidentKeyRequirement.required: 'required',
};

const _$UserVerificationRequirementEnumMap = {
  UserVerificationRequirement.required: 'required',
  UserVerificationRequirement.preferred: 'preferred',
  UserVerificationRequirement.discouraged: 'discouraged',
};

BaseConnectorConfiguration _$BaseConnectorConfigurationFromJson(
        Map<String, dynamic> json) =>
    BaseConnectorConfiguration(
      data: json['data'] as Map<String, dynamic>?,
      debug: json['debug'] as bool? ?? false,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
      type: _$enumDecodeNullable(_$ConnectorTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$BaseConnectorConfigurationToJson(
    BaseConnectorConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('debug', instance.debug);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$ConnectorTypeEnumMap[instance.type]);
  return val;
}

const _$ConnectorTypeEnumMap = {
  ConnectorType.FusionAuth: 'FusionAuth',
  ConnectorType.Generic: 'Generic',
  ConnectorType.LDAP: 'LDAP',
};

BaseElasticSearchCriteria _$BaseElasticSearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    BaseElasticSearchCriteria(
      accurateTotal: json['accurateTotal'] as bool? ?? false,
      ids: (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      query: json['query'] as String?,
      queryString: json['queryString'] as String?,
      sortFields: (json['sortFields'] as List<dynamic>?)
          ?.map((e) => SortField.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$BaseElasticSearchCriteriaToJson(
    BaseElasticSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('accurateTotal', instance.accurateTotal);
  writeNotNull('ids', instance.ids);
  writeNotNull('query', instance.query);
  writeNotNull('queryString', instance.queryString);
  writeNotNull('sortFields', instance.sortFields);
  return val;
}

BaseEvent _$BaseEventFromJson(Map<String, dynamic> json) => BaseEvent(
      createInstant: json['createInstant'] as num?,
      id: json['id'] as String?,
      info: json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>),
      tenantId: json['tenantId'] as String?,
      type: _$enumDecodeNullable(_$EventTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$BaseEventToJson(BaseEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  return val;
}

BaseEventRequest _$BaseEventRequestFromJson(Map<String, dynamic> json) =>
    BaseEventRequest(
      eventInfo: json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BaseEventRequestToJson(BaseEventRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  return val;
}

BaseExportRequest _$BaseExportRequestFromJson(Map<String, dynamic> json) =>
    BaseExportRequest(
      dateTimeSecondsFormat: json['dateTimeSecondsFormat'] as String?,
      zoneId: json['zoneId'] as String?,
    );

Map<String, dynamic> _$BaseExportRequestToJson(BaseExportRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dateTimeSecondsFormat', instance.dateTimeSecondsFormat);
  writeNotNull('zoneId', instance.zoneId);
  return val;
}

Map<String, dynamic> _$BaseIdentityProviderToJson<
        D extends BaseIdentityProviderApplicationConfiguration>(
    BaseIdentityProvider<D> instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull(
      'applicationConfiguration',
      instance.applicationConfiguration?.map((k, e) => MapEntry(k,
          IdentityProviderApplicationConfigurationConverter<D>().toJson(e))));
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  return val;
}

BaseIdentityProviderApplicationConfiguration
    _$BaseIdentityProviderApplicationConfigurationFromJson(
            Map<String, dynamic> json) =>
        BaseIdentityProviderApplicationConfiguration(
          createRegistration: json['createRegistration'] as bool?,
          data: json['data'] as Map<String, dynamic>?,
        )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$BaseIdentityProviderApplicationConfigurationToJson(
    BaseIdentityProviderApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  return val;
}

BaseLoginRequest _$BaseLoginRequestFromJson(Map<String, dynamic> json) =>
    BaseLoginRequest(
      applicationId: json['applicationId'] as String?,
      ipAddress: json['ipAddress'] as String?,
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      newDevice: json['newDevice'] as bool?,
      noJWT: json['noJWT'] as bool?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$BaseLoginRequestToJson(BaseLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('newDevice', instance.newDevice);
  writeNotNull('noJWT', instance.noJWT);
  return val;
}

BaseMessengerConfiguration _$BaseMessengerConfigurationFromJson(
        Map<String, dynamic> json) =>
    BaseMessengerConfiguration(
      data: json['data'] as Map<String, dynamic>?,
      debug: json['debug'] as bool? ?? false,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
      transport: json['transport'] as String?,
      type: _$enumDecodeNullable(_$MessengerTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$BaseMessengerConfigurationToJson(
    BaseMessengerConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('transport', instance.transport);
  writeNotNull('type', _$MessengerTypeEnumMap[instance.type]);
  return val;
}

const _$MessengerTypeEnumMap = {
  MessengerType.Generic: 'Generic',
  MessengerType.Kafka: 'Kafka',
  MessengerType.Twilio: 'Twilio',
};

BaseSearchCriteria _$BaseSearchCriteriaFromJson(Map<String, dynamic> json) =>
    BaseSearchCriteria(
      numberOfResults: json['numberOfResults'] as num?,
      orderBy: json['orderBy'] as String?,
      startRow: json['startRow'] as num?,
    );

Map<String, dynamic> _$BaseSearchCriteriaToJson(BaseSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  return val;
}

BreachedPasswordTenantMetric _$BreachedPasswordTenantMetricFromJson(
        Map<String, dynamic> json) =>
    BreachedPasswordTenantMetric(
      actionRequired: json['actionRequired'] as num?,
      matchedCommonPasswordCount: json['matchedCommonPasswordCount'] as num?,
      matchedExactCount: json['matchedExactCount'] as num?,
      matchedPasswordCount: json['matchedPasswordCount'] as num?,
      matchedSubAddressCount: json['matchedSubAddressCount'] as num?,
      passwordsCheckedCount: json['passwordsCheckedCount'] as num?,
    );

Map<String, dynamic> _$BreachedPasswordTenantMetricToJson(
    BreachedPasswordTenantMetric instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('actionRequired', instance.actionRequired);
  writeNotNull(
      'matchedCommonPasswordCount', instance.matchedCommonPasswordCount);
  writeNotNull('matchedExactCount', instance.matchedExactCount);
  writeNotNull('matchedPasswordCount', instance.matchedPasswordCount);
  writeNotNull('matchedSubAddressCount', instance.matchedSubAddressCount);
  writeNotNull('passwordsCheckedCount', instance.passwordsCheckedCount);
  return val;
}

CertificateInformation _$CertificateInformationFromJson(
        Map<String, dynamic> json) =>
    CertificateInformation(
      issuer: json['issuer'] as String?,
      md5Fingerprint: json['md5Fingerprint'] as String?,
      serialNumber: json['serialNumber'] as String?,
      sha1Fingerprint: json['sha1Fingerprint'] as String?,
      sha1Thumbprint: json['sha1Thumbprint'] as String?,
      sha256Fingerprint: json['sha256Fingerprint'] as String?,
      sha256Thumbprint: json['sha256Thumbprint'] as String?,
      subject: json['subject'] as String?,
      validFrom: json['validFrom'] as num?,
      validTo: json['validTo'] as num?,
    );

Map<String, dynamic> _$CertificateInformationToJson(
    CertificateInformation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('issuer', instance.issuer);
  writeNotNull('md5Fingerprint', instance.md5Fingerprint);
  writeNotNull('serialNumber', instance.serialNumber);
  writeNotNull('sha1Fingerprint', instance.sha1Fingerprint);
  writeNotNull('sha1Thumbprint', instance.sha1Thumbprint);
  writeNotNull('sha256Fingerprint', instance.sha256Fingerprint);
  writeNotNull('sha256Thumbprint', instance.sha256Thumbprint);
  writeNotNull('subject', instance.subject);
  writeNotNull('validFrom', instance.validFrom);
  writeNotNull('validTo', instance.validTo);
  return val;
}

ChangePasswordRequest _$ChangePasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordRequest(
      applicationId: json['applicationId'] as String?,
      changePasswordId: json['changePasswordId'] as String?,
      currentPassword: json['currentPassword'] as String?,
      loginId: json['loginId'] as String?,
      password: json['password'] as String?,
      refreshToken: json['refreshToken'] as String?,
      trustChallenge: json['trustChallenge'] as String?,
      trustToken: json['trustToken'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$ChangePasswordRequestToJson(
    ChangePasswordRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('changePasswordId', instance.changePasswordId);
  writeNotNull('currentPassword', instance.currentPassword);
  writeNotNull('loginId', instance.loginId);
  writeNotNull('password', instance.password);
  writeNotNull('refreshToken', instance.refreshToken);
  writeNotNull('trustChallenge', instance.trustChallenge);
  writeNotNull('trustToken', instance.trustToken);
  return val;
}

ChangePasswordResponse _$ChangePasswordResponseFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordResponse(
      oneTimePassword: json['oneTimePassword'] as String,
      state: json['state'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ChangePasswordResponseToJson(
    ChangePasswordResponse instance) {
  final val = <String, dynamic>{
    'oneTimePassword': instance.oneTimePassword,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('state', instance.state);
  return val;
}

CleanSpeakConfiguration _$CleanSpeakConfigurationFromJson(
        Map<String, dynamic> json) =>
    CleanSpeakConfiguration(
      apiKey: json['apiKey'] as String?,
      applicationIds: (json['applicationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      url: json['url'] as String?,
      usernameModeration: json['usernameModeration'] == null
          ? null
          : UsernameModeration.fromJson(
              json['usernameModeration'] as Map<String, dynamic>),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$CleanSpeakConfigurationToJson(
    CleanSpeakConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('apiKey', instance.apiKey);
  writeNotNull('applicationIds', instance.applicationIds);
  writeNotNull('url', instance.url);
  writeNotNull('usernameModeration', instance.usernameModeration);
  return val;
}

ConnectorPolicy _$ConnectorPolicyFromJson(Map<String, dynamic> json) =>
    ConnectorPolicy(
      connectorId: json['connectorId'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      domains:
          (json['domains'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      migrate: json['migrate'] as bool?,
    );

Map<String, dynamic> _$ConnectorPolicyToJson(ConnectorPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('connectorId', instance.connectorId);
  writeNotNull('data', instance.data);
  writeNotNull('domains', instance.domains?.toList());
  writeNotNull('migrate', instance.migrate);
  return val;
}

ConnectorRequest _$ConnectorRequestFromJson(Map<String, dynamic> json) =>
    ConnectorRequest(
      connector: BaseConnectorConfiguration.fromJson(
          json['connector'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConnectorRequestToJson(ConnectorRequest instance) =>
    <String, dynamic>{
      'connector': instance.connector,
    };

ConnectorResponse _$ConnectorResponseFromJson(Map<String, dynamic> json) =>
    ConnectorResponse(
      connector: BaseConnectorConfiguration.fromJson(
          json['connector'] as Map<String, dynamic>),
      connectors: (json['connectors'] as List<dynamic>)
          .map((e) =>
              BaseConnectorConfiguration.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConnectorResponseToJson(ConnectorResponse instance) =>
    <String, dynamic>{
      'connector': instance.connector,
      'connectors': instance.connectors,
    };

Consent _$ConsentFromJson(Map<String, dynamic> json) => Consent(
      consentEmailTemplateId: json['consentEmailTemplateId'] as String,
      countryMinimumAgeForSelfConsent:
          Map<String, num>.from(json['countryMinimumAgeForSelfConsent'] as Map),
      data: json['data'] as Map<String, dynamic>,
      defaultMinimumAgeForSelfConsent:
          json['defaultMinimumAgeForSelfConsent'] as num,
      emailPlus: EmailPlus.fromJson(json['emailPlus'] as Map<String, dynamic>),
      id: json['id'] as String,
      insertInstant: json['insertInstant'] as num,
      lastUpdateInstant: json['lastUpdateInstant'] as num,
      multipleValuesAllowed: json['multipleValuesAllowed'] as bool,
      name: json['name'] as String,
      values:
          (json['values'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ConsentToJson(Consent instance) => <String, dynamic>{
      'consentEmailTemplateId': instance.consentEmailTemplateId,
      'countryMinimumAgeForSelfConsent':
          instance.countryMinimumAgeForSelfConsent,
      'data': instance.data,
      'defaultMinimumAgeForSelfConsent':
          instance.defaultMinimumAgeForSelfConsent,
      'emailPlus': instance.emailPlus,
      'id': instance.id,
      'insertInstant': instance.insertInstant,
      'lastUpdateInstant': instance.lastUpdateInstant,
      'multipleValuesAllowed': instance.multipleValuesAllowed,
      'name': instance.name,
      'values': instance.values,
    };

ConsentRequest _$ConsentRequestFromJson(Map<String, dynamic> json) =>
    ConsentRequest(
      consent: json['consent'] == null
          ? null
          : Consent.fromJson(json['consent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConsentRequestToJson(ConsentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consent', instance.consent);
  return val;
}

ConsentResponse _$ConsentResponseFromJson(Map<String, dynamic> json) =>
    ConsentResponse(
      consent: json['consent'] == null
          ? null
          : Consent.fromJson(json['consent'] as Map<String, dynamic>),
      consents: (json['consents'] as List<dynamic>?)
          ?.map((e) => Consent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConsentResponseToJson(ConsentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consent', instance.consent);
  writeNotNull('consents', instance.consents);
  return val;
}

CORSConfiguration _$CORSConfigurationFromJson(Map<String, dynamic> json) =>
    CORSConfiguration(
      allowCredentials: json['allowCredentials'] as bool?,
      allowedHeaders: (json['allowedHeaders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allowedMethods: (json['allowedMethods'] as List<dynamic>?)
          ?.map((e) => _$enumDecode(_$HTTPMethodEnumMap, e))
          .toList(),
      allowedOrigins: (json['allowedOrigins'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      debug: json['debug'] as bool?,
      exposedHeaders: (json['exposedHeaders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preflightMaxAgeInSeconds: json['preflightMaxAgeInSeconds'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$CORSConfigurationToJson(CORSConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('allowCredentials', instance.allowCredentials);
  writeNotNull('allowedHeaders', instance.allowedHeaders);
  writeNotNull('allowedMethods',
      instance.allowedMethods?.map((e) => _$HTTPMethodEnumMap[e]).toList());
  writeNotNull('allowedOrigins', instance.allowedOrigins);
  writeNotNull('debug', instance.debug);
  writeNotNull('exposedHeaders', instance.exposedHeaders);
  writeNotNull('preflightMaxAgeInSeconds', instance.preflightMaxAgeInSeconds);
  return val;
}

const _$HTTPMethodEnumMap = {
  HTTPMethod.GET: 'GET',
  HTTPMethod.POST: 'POST',
  HTTPMethod.PUT: 'PUT',
  HTTPMethod.DELETE: 'DELETE',
  HTTPMethod.HEAD: 'HEAD',
  HTTPMethod.OPTIONS: 'OPTIONS',
  HTTPMethod.PATCH: 'PATCH',
};

Count _$CountFromJson(Map<String, dynamic> json) => Count(
      count: json['count'] as num?,
      interval: json['interval'] as num?,
    );

Map<String, dynamic> _$CountToJson(Count instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('interval', instance.interval);
  return val;
}

CredentialPropertiesOutput _$CredentialPropertiesOutputFromJson(
        Map<String, dynamic> json) =>
    CredentialPropertiesOutput(
      rk: json['rk'] as bool?,
    );

Map<String, dynamic> _$CredentialPropertiesOutputToJson(
    CredentialPropertiesOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rk', instance.rk);
  return val;
}

DailyActiveUserReportResponse _$DailyActiveUserReportResponseFromJson(
        Map<String, dynamic> json) =>
    DailyActiveUserReportResponse(
      dailyActiveUsers: (json['dailyActiveUsers'] as List<dynamic>?)
          ?.map((e) => Count.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$DailyActiveUserReportResponseToJson(
    DailyActiveUserReportResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dailyActiveUsers', instance.dailyActiveUsers);
  writeNotNull('total', instance.total);
  return val;
}

DeleteConfiguration _$DeleteConfigurationFromJson(Map<String, dynamic> json) =>
    DeleteConfiguration(
      numberOfDaysToRetain: json['numberOfDaysToRetain'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$DeleteConfigurationToJson(DeleteConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('numberOfDaysToRetain', instance.numberOfDaysToRetain);
  return val;
}

DeviceInfo _$DeviceInfoFromJson(Map<String, dynamic> json) => DeviceInfo(
      description: json['description'] as String,
      lastAccessedAddress: json['lastAccessedAddress'] as String,
      lastAccessedInstant: json['lastAccessedInstant'] as num,
      name: json['name'] as String,
      type: _$enumDecode(_$DeviceTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$DeviceInfoToJson(DeviceInfo instance) =>
    <String, dynamic>{
      'description': instance.description,
      'lastAccessedAddress': instance.lastAccessedAddress,
      'lastAccessedInstant': instance.lastAccessedInstant,
      'name': instance.name,
      'type': _$DeviceTypeEnumMap[instance.type],
    };

const _$DeviceTypeEnumMap = {
  DeviceType.BROWSER: 'BROWSER',
  DeviceType.DESKTOP: 'DESKTOP',
  DeviceType.LAPTOP: 'LAPTOP',
  DeviceType.MOBILE: 'MOBILE',
  DeviceType.OTHER: 'OTHER',
  DeviceType.SERVER: 'SERVER',
  DeviceType.TABLET: 'TABLET',
  DeviceType.TV: 'TV',
  DeviceType.UNKNOWN: 'UNKNOWN',
};

DeviceResponse _$DeviceResponseFromJson(Map<String, dynamic> json) =>
    DeviceResponse(
      device_code: json['device_code'] as String,
      expires_in: json['expires_in'] as num,
      interval: json['interval'] as num,
      user_code: json['user_code'] as String,
      verification_uri: json['verification_uri'] as String,
      verification_uri_complete: json['verification_uri_complete'] as String,
    );

Map<String, dynamic> _$DeviceResponseToJson(DeviceResponse instance) =>
    <String, dynamic>{
      'device_code': instance.device_code,
      'expires_in': instance.expires_in,
      'interval': instance.interval,
      'user_code': instance.user_code,
      'verification_uri': instance.verification_uri,
      'verification_uri_complete': instance.verification_uri_complete,
    };

DisplayableRawLogin _$DisplayableRawLoginFromJson(Map<String, dynamic> json) =>
    DisplayableRawLogin(
      applicationName: json['applicationName'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      loginId: json['loginId'] as String?,
    )
      ..applicationId = json['applicationId'] as String?
      ..instant = json['instant'] as num?
      ..ipAddress = json['ipAddress'] as String?
      ..userId = json['userId'] as String?;

Map<String, dynamic> _$DisplayableRawLoginToJson(DisplayableRawLogin instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('instant', instance.instant);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('userId', instance.userId);
  writeNotNull('applicationName', instance.applicationName);
  writeNotNull('location', instance.location);
  writeNotNull('loginId', instance.loginId);
  return val;
}

DomainBasedIdentityProvider _$DomainBasedIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    DomainBasedIdentityProvider();

Map<String, dynamic> _$DomainBasedIdentityProviderToJson(
        DomainBasedIdentityProvider instance) =>
    <String, dynamic>{};

Email _$EmailFromJson(Map<String, dynamic> json) => Email(
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      bcc: (json['bcc'] as List<dynamic>)
          .map((e) => EmailAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      cc: (json['cc'] as List<dynamic>)
          .map((e) => EmailAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      from: EmailAddress.fromJson(json['from'] as Map<String, dynamic>),
      html: json['html'] as String,
      replyTo: EmailAddress.fromJson(json['replyTo'] as Map<String, dynamic>),
      subject: json['subject'] as String,
      text: json['text'] as String,
      to: (json['to'] as List<dynamic>)
          .map((e) => EmailAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmailToJson(Email instance) => <String, dynamic>{
      'attachments': instance.attachments,
      'bcc': instance.bcc,
      'cc': instance.cc,
      'from': instance.from,
      'html': instance.html,
      'replyTo': instance.replyTo,
      'subject': instance.subject,
      'text': instance.text,
      'to': instance.to,
    };

EmailAddress _$EmailAddressFromJson(Map<String, dynamic> json) => EmailAddress(
      address: json['address'] as String?,
      display: json['display'] as String?,
    );

Map<String, dynamic> _$EmailAddressToJson(EmailAddress instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('address', instance.address);
  writeNotNull('display', instance.display);
  return val;
}

EmailConfiguration _$EmailConfigurationFromJson(Map<String, dynamic> json) =>
    EmailConfiguration(
      additionalHeaders: (json['additionalHeaders'] as List<dynamic>?)
          ?.map((e) => EmailHeader.fromJson(e as Map<String, dynamic>))
          .toList(),
      debug: json['debug'] as bool?,
      defaultFromEmail: json['defaultFromEmail'] as String?,
      defaultFromName: json['defaultFromName'] as String?,
      emailUpdateEmailTemplateId: json['emailUpdateEmailTemplateId'] as String?,
      emailVerifiedEmailTemplateId:
          json['emailVerifiedEmailTemplateId'] as String?,
      forgotPasswordEmailTemplateId:
          json['forgotPasswordEmailTemplateId'] as String?,
      host: json['host'] as String?,
      implicitEmailVerificationAllowed:
          json['implicitEmailVerificationAllowed'] as bool?,
      loginIdInUseOnCreateEmailTemplateId:
          json['loginIdInUseOnCreateEmailTemplateId'] as String?,
      loginIdInUseOnUpdateEmailTemplateId:
          json['loginIdInUseOnUpdateEmailTemplateId'] as String?,
      loginNewDeviceEmailTemplateId:
          json['loginNewDeviceEmailTemplateId'] as String?,
      loginSuspiciousEmailTemplateId:
          json['loginSuspiciousEmailTemplateId'] as String?,
      password: json['password'] as String?,
      passwordlessEmailTemplateId:
          json['passwordlessEmailTemplateId'] as String?,
      passwordResetSuccessEmailTemplateId:
          json['passwordResetSuccessEmailTemplateId'] as String?,
      passwordUpdateEmailTemplateId:
          json['passwordUpdateEmailTemplateId'] as String?,
      port: json['port'] as num?,
      properties: json['properties'] as String?,
      security:
          _$enumDecodeNullable(_$EmailSecurityTypeEnumMap, json['security']),
      setPasswordEmailTemplateId: json['setPasswordEmailTemplateId'] as String?,
      twoFactorMethodAddEmailTemplateId:
          json['twoFactorMethodAddEmailTemplateId'] as String?,
      twoFactorMethodRemoveEmailTemplateId:
          json['twoFactorMethodRemoveEmailTemplateId'] as String?,
      unverified: json['unverified'] == null
          ? null
          : EmailUnverifiedOptions.fromJson(
              json['unverified'] as Map<String, dynamic>),
      username: json['username'] as String?,
      verificationEmailTemplateId:
          json['verificationEmailTemplateId'] as String?,
      verificationStrategy: _$enumDecodeNullable(
          _$VerificationStrategyEnumMap, json['verificationStrategy']),
      verifyEmail: json['verifyEmail'] as bool?,
      verifyEmailWhenChanged: json['verifyEmailWhenChanged'] as bool?,
    );

Map<String, dynamic> _$EmailConfigurationToJson(EmailConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalHeaders', instance.additionalHeaders);
  writeNotNull('debug', instance.debug);
  writeNotNull('defaultFromEmail', instance.defaultFromEmail);
  writeNotNull('defaultFromName', instance.defaultFromName);
  writeNotNull(
      'emailUpdateEmailTemplateId', instance.emailUpdateEmailTemplateId);
  writeNotNull(
      'emailVerifiedEmailTemplateId', instance.emailVerifiedEmailTemplateId);
  writeNotNull(
      'forgotPasswordEmailTemplateId', instance.forgotPasswordEmailTemplateId);
  writeNotNull('host', instance.host);
  writeNotNull('implicitEmailVerificationAllowed',
      instance.implicitEmailVerificationAllowed);
  writeNotNull('loginIdInUseOnCreateEmailTemplateId',
      instance.loginIdInUseOnCreateEmailTemplateId);
  writeNotNull('loginIdInUseOnUpdateEmailTemplateId',
      instance.loginIdInUseOnUpdateEmailTemplateId);
  writeNotNull(
      'loginNewDeviceEmailTemplateId', instance.loginNewDeviceEmailTemplateId);
  writeNotNull('loginSuspiciousEmailTemplateId',
      instance.loginSuspiciousEmailTemplateId);
  writeNotNull('password', instance.password);
  writeNotNull(
      'passwordlessEmailTemplateId', instance.passwordlessEmailTemplateId);
  writeNotNull('passwordResetSuccessEmailTemplateId',
      instance.passwordResetSuccessEmailTemplateId);
  writeNotNull(
      'passwordUpdateEmailTemplateId', instance.passwordUpdateEmailTemplateId);
  writeNotNull('port', instance.port);
  writeNotNull('properties', instance.properties);
  writeNotNull('security', _$EmailSecurityTypeEnumMap[instance.security]);
  writeNotNull(
      'setPasswordEmailTemplateId', instance.setPasswordEmailTemplateId);
  writeNotNull('twoFactorMethodAddEmailTemplateId',
      instance.twoFactorMethodAddEmailTemplateId);
  writeNotNull('twoFactorMethodRemoveEmailTemplateId',
      instance.twoFactorMethodRemoveEmailTemplateId);
  writeNotNull('unverified', instance.unverified);
  writeNotNull('username', instance.username);
  writeNotNull(
      'verificationEmailTemplateId', instance.verificationEmailTemplateId);
  writeNotNull('verificationStrategy',
      _$VerificationStrategyEnumMap[instance.verificationStrategy]);
  writeNotNull('verifyEmail', instance.verifyEmail);
  writeNotNull('verifyEmailWhenChanged', instance.verifyEmailWhenChanged);
  return val;
}

const _$EmailSecurityTypeEnumMap = {
  EmailSecurityType.NONE: 'NONE',
  EmailSecurityType.SSL: 'SSL',
  EmailSecurityType.TLS: 'TLS',
};

EmailHeader _$EmailHeaderFromJson(Map<String, dynamic> json) => EmailHeader(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$EmailHeaderToJson(EmailHeader instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

EmailPlus _$EmailPlusFromJson(Map<String, dynamic> json) => EmailPlus(
      emailTemplateId: json['emailTemplateId'] as String?,
      maximumTimeToSendEmailInHours:
          json['maximumTimeToSendEmailInHours'] as num?,
      minimumTimeToSendEmailInHours:
          json['minimumTimeToSendEmailInHours'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$EmailPlusToJson(EmailPlus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('emailTemplateId', instance.emailTemplateId);
  writeNotNull(
      'maximumTimeToSendEmailInHours', instance.maximumTimeToSendEmailInHours);
  writeNotNull(
      'minimumTimeToSendEmailInHours', instance.minimumTimeToSendEmailInHours);
  return val;
}

EmailTemplate _$EmailTemplateFromJson(Map<String, dynamic> json) =>
    EmailTemplate(
      defaultFromName: json['defaultFromName'] as String?,
      defaultHtmlTemplate: json['defaultHtmlTemplate'] as String?,
      defaultSubject: json['defaultSubject'] as String?,
      defaultTextTemplate: json['defaultTextTemplate'] as String?,
      fromEmail: json['fromEmail'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      localizedFromNames:
          (json['localizedFromNames'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      localizedHtmlTemplates:
          (json['localizedHtmlTemplates'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      localizedSubjects:
          (json['localizedSubjects'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      localizedTextTemplates:
          (json['localizedTextTemplates'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$EmailTemplateToJson(EmailTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultFromName', instance.defaultFromName);
  writeNotNull('defaultHtmlTemplate', instance.defaultHtmlTemplate);
  writeNotNull('defaultSubject', instance.defaultSubject);
  writeNotNull('defaultTextTemplate', instance.defaultTextTemplate);
  writeNotNull('fromEmail', instance.fromEmail);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('localizedFromNames', instance.localizedFromNames);
  writeNotNull('localizedHtmlTemplates', instance.localizedHtmlTemplates);
  writeNotNull('localizedSubjects', instance.localizedSubjects);
  writeNotNull('localizedTextTemplates', instance.localizedTextTemplates);
  writeNotNull('name', instance.name);
  return val;
}

EmailTemplateErrors _$EmailTemplateErrorsFromJson(Map<String, dynamic> json) =>
    EmailTemplateErrors(
      parseErrors: (json['parseErrors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      renderErrors: (json['renderErrors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$EmailTemplateErrorsToJson(EmailTemplateErrors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parseErrors', instance.parseErrors);
  writeNotNull('renderErrors', instance.renderErrors);
  return val;
}

EmailTemplateRequest _$EmailTemplateRequestFromJson(
        Map<String, dynamic> json) =>
    EmailTemplateRequest(
      emailTemplate: json['emailTemplate'] == null
          ? null
          : EmailTemplate.fromJson(
              json['emailTemplate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmailTemplateRequestToJson(
    EmailTemplateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emailTemplate', instance.emailTemplate);
  return val;
}

EmailTemplateResponse _$EmailTemplateResponseFromJson(
        Map<String, dynamic> json) =>
    EmailTemplateResponse(
      emailTemplate: json['emailTemplate'] == null
          ? null
          : EmailTemplate.fromJson(
              json['emailTemplate'] as Map<String, dynamic>),
      emailTemplates: (json['emailTemplates'] as List<dynamic>?)
          ?.map((e) => EmailTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmailTemplateResponseToJson(
    EmailTemplateResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emailTemplate', instance.emailTemplate);
  writeNotNull('emailTemplates', instance.emailTemplates);
  return val;
}

EmailUnverifiedOptions _$EmailUnverifiedOptionsFromJson(
        Map<String, dynamic> json) =>
    EmailUnverifiedOptions(
      allowEmailChangeWhenGated: json['allowEmailChangeWhenGated'] as bool?,
      behavior:
          _$enumDecodeNullable(_$UnverifiedBehaviorEnumMap, json['behavior']),
    );

Map<String, dynamic> _$EmailUnverifiedOptionsToJson(
    EmailUnverifiedOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allowEmailChangeWhenGated', instance.allowEmailChangeWhenGated);
  writeNotNull('behavior', _$UnverifiedBehaviorEnumMap[instance.behavior]);
  return val;
}

Enableable _$EnableableFromJson(Map<String, dynamic> json) => Enableable(
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$EnableableToJson(Enableable instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  return val;
}

Entity _$EntityFromJson(Map<String, dynamic> json) => Entity(
      clientId: json['clientId'] as String?,
      clientSecret: json['clientSecret'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
      parentId: json['parentId'] as String?,
      tenantId: json['tenantId'] as String?,
      type: json['type'] == null
          ? null
          : EntityType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityToJson(Entity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientId', instance.clientId);
  writeNotNull('clientSecret', instance.clientSecret);
  writeNotNull('data', instance.data);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('parentId', instance.parentId);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', instance.type);
  return val;
}

EntityGrant _$EntityGrantFromJson(Map<String, dynamic> json) => EntityGrant(
      data: json['data'] as Map<String, dynamic>,
      entity: Entity.fromJson(json['entity'] as Map<String, dynamic>),
      id: json['id'] as String,
      insertInstant: json['insertInstant'] as num,
      lastUpdateInstant: json['lastUpdateInstant'] as num,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => e as String)
          .toSet(),
      recipientEntityId: json['recipientEntityId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$EntityGrantToJson(EntityGrant instance) =>
    <String, dynamic>{
      'data': instance.data,
      'entity': instance.entity,
      'id': instance.id,
      'insertInstant': instance.insertInstant,
      'lastUpdateInstant': instance.lastUpdateInstant,
      'permissions': instance.permissions.toList(),
      'recipientEntityId': instance.recipientEntityId,
      'userId': instance.userId,
    };

EntityGrantRequest _$EntityGrantRequestFromJson(Map<String, dynamic> json) =>
    EntityGrantRequest(
      grant: json['grant'] == null
          ? null
          : EntityGrant.fromJson(json['grant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityGrantRequestToJson(EntityGrantRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('grant', instance.grant);
  return val;
}

EntityGrantResponse _$EntityGrantResponseFromJson(Map<String, dynamic> json) =>
    EntityGrantResponse(
      grant: json['grant'] == null
          ? null
          : EntityGrant.fromJson(json['grant'] as Map<String, dynamic>),
      grants: (json['grants'] as List<dynamic>?)
          ?.map((e) => EntityGrant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EntityGrantResponseToJson(EntityGrantResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('grant', instance.grant);
  writeNotNull('grants', instance.grants);
  return val;
}

EntityGrantSearchCriteria _$EntityGrantSearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    EntityGrantSearchCriteria(
      entityId: json['entityId'] as String?,
      name: json['name'] as String?,
      userId: json['userId'] as String?,
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$EntityGrantSearchCriteriaToJson(
    EntityGrantSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('entityId', instance.entityId);
  writeNotNull('name', instance.name);
  writeNotNull('userId', instance.userId);
  return val;
}

EntityGrantSearchRequest _$EntityGrantSearchRequestFromJson(
        Map<String, dynamic> json) =>
    EntityGrantSearchRequest(
      search: json['search'] == null
          ? null
          : EntityGrantSearchCriteria.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityGrantSearchRequestToJson(
    EntityGrantSearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  return val;
}

EntityGrantSearchResponse _$EntityGrantSearchResponseFromJson(
        Map<String, dynamic> json) =>
    EntityGrantSearchResponse(
      grants: (json['grants'] as List<dynamic>?)
          ?.map((e) => EntityGrant.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$EntityGrantSearchResponseToJson(
    EntityGrantSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('grants', instance.grants);
  writeNotNull('total', instance.total);
  return val;
}

EntityJWTConfiguration _$EntityJWTConfigurationFromJson(
        Map<String, dynamic> json) =>
    EntityJWTConfiguration(
      accessTokenKeyId: json['accessTokenKeyId'] as String?,
      timeToLiveInSeconds: json['timeToLiveInSeconds'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$EntityJWTConfigurationToJson(
    EntityJWTConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('accessTokenKeyId', instance.accessTokenKeyId);
  writeNotNull('timeToLiveInSeconds', instance.timeToLiveInSeconds);
  return val;
}

EntityRequest _$EntityRequestFromJson(Map<String, dynamic> json) =>
    EntityRequest(
      entity: json['entity'] == null
          ? null
          : Entity.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityRequestToJson(EntityRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity);
  return val;
}

EntityResponse _$EntityResponseFromJson(Map<String, dynamic> json) =>
    EntityResponse(
      entity: json['entity'] == null
          ? null
          : Entity.fromJson(json['entity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityResponseToJson(EntityResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entity', instance.entity);
  return val;
}

EntitySearchCriteria _$EntitySearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    EntitySearchCriteria()
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?
      ..accurateTotal = json['accurateTotal'] as bool? ?? false
      ..ids = (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..query = json['query'] as String?
      ..queryString = json['queryString'] as String?
      ..sortFields = (json['sortFields'] as List<dynamic>?)
          ?.map((e) => SortField.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$EntitySearchCriteriaToJson(
    EntitySearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('accurateTotal', instance.accurateTotal);
  writeNotNull('ids', instance.ids);
  writeNotNull('query', instance.query);
  writeNotNull('queryString', instance.queryString);
  writeNotNull('sortFields', instance.sortFields);
  return val;
}

EntitySearchRequest _$EntitySearchRequestFromJson(Map<String, dynamic> json) =>
    EntitySearchRequest(
      search: json['search'] == null
          ? null
          : EntitySearchCriteria.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntitySearchRequestToJson(EntitySearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  return val;
}

EntitySearchResponse _$EntitySearchResponseFromJson(
        Map<String, dynamic> json) =>
    EntitySearchResponse(
      entities: (json['entities'] as List<dynamic>?)
          ?.map((e) => Entity.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$EntitySearchResponseToJson(
    EntitySearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entities', instance.entities);
  writeNotNull('total', instance.total);
  return val;
}

EntityType _$EntityTypeFromJson(Map<String, dynamic> json) => EntityType(
      data: json['data'] as Map<String, dynamic>?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      jwtConfiguration: json['jwtConfiguration'] == null
          ? null
          : EntityJWTConfiguration.fromJson(
              json['jwtConfiguration'] as Map<String, dynamic>),
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => EntityTypePermission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EntityTypeToJson(EntityType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('jwtConfiguration', instance.jwtConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('permissions', instance.permissions);
  return val;
}

EntityTypePermission _$EntityTypePermissionFromJson(
        Map<String, dynamic> json) =>
    EntityTypePermission(
      data: json['data'] as Map<String, dynamic>?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      isDefault: json['isDefault'] as bool?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$EntityTypePermissionToJson(
    EntityTypePermission instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('isDefault', instance.isDefault);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  return val;
}

EntityTypeRequest _$EntityTypeRequestFromJson(Map<String, dynamic> json) =>
    EntityTypeRequest(
      entityType: json['entityType'] == null
          ? null
          : EntityType.fromJson(json['entityType'] as Map<String, dynamic>),
      permission: json['permission'] == null
          ? null
          : EntityTypePermission.fromJson(
              json['permission'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityTypeRequestToJson(EntityTypeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entityType', instance.entityType);
  writeNotNull('permission', instance.permission);
  return val;
}

EntityTypeResponse _$EntityTypeResponseFromJson(Map<String, dynamic> json) =>
    EntityTypeResponse(
      entityType: json['entityType'] == null
          ? null
          : EntityType.fromJson(json['entityType'] as Map<String, dynamic>),
      entityTypes: (json['entityTypes'] as List<dynamic>?)
          ?.map((e) => EntityType.fromJson(e as Map<String, dynamic>))
          .toList(),
      permission: json['permission'] == null
          ? null
          : EntityTypePermission.fromJson(
              json['permission'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityTypeResponseToJson(EntityTypeResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entityType', instance.entityType);
  writeNotNull('entityTypes', instance.entityTypes);
  writeNotNull('permission', instance.permission);
  return val;
}

EntityTypeSearchCriteria _$EntityTypeSearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    EntityTypeSearchCriteria(
      name: json['name'] as String?,
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$EntityTypeSearchCriteriaToJson(
    EntityTypeSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('name', instance.name);
  return val;
}

EntityTypeSearchRequest _$EntityTypeSearchRequestFromJson(
        Map<String, dynamic> json) =>
    EntityTypeSearchRequest(
      search: json['search'] == null
          ? null
          : EntityTypeSearchCriteria.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EntityTypeSearchRequestToJson(
    EntityTypeSearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  return val;
}

EntityTypeSearchResponse _$EntityTypeSearchResponseFromJson(
        Map<String, dynamic> json) =>
    EntityTypeSearchResponse(
      entityTypes: (json['entityTypes'] as List<dynamic>?)
          ?.map((e) => EntityType.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$EntityTypeSearchResponseToJson(
    EntityTypeSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entityTypes', instance.entityTypes);
  writeNotNull('total', instance.total);
  return val;
}

EpicGamesApplicationConfiguration _$EpicGamesApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    EpicGamesApplicationConfiguration(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$EpicGamesApplicationConfigurationToJson(
    EpicGamesApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('scope', instance.scope);
  return val;
}

EpicGamesIdentityProvider _$EpicGamesIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    EpicGamesIdentityProvider(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            EpicGamesApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$EpicGamesIdentityProviderToJson(
    EpicGamesIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('scope', instance.scope);
  return val;
}

Error _$ErrorFromJson(Map<String, dynamic> json) => Error(
      code: json['code'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ErrorToJson(Error instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('data', instance.data);
  writeNotNull('message', instance.message);
  return val;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) => Errors(
      fieldErrors: (json['fieldErrors'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => Error.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      generalErrors: (json['generalErrors'] as List<dynamic>?)
          ?.map((e) => Error.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorsToJson(Errors instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldErrors', instance.fieldErrors);
  writeNotNull('generalErrors', instance.generalErrors);
  return val;
}

EventConfiguration _$EventConfigurationFromJson(Map<String, dynamic> json) =>
    EventConfiguration(
      events: (json['events'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(_$enumDecode(_$EventTypeEnumMap, k),
            EventConfigurationData.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$EventConfigurationToJson(EventConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('events',
      instance.events?.map((k, e) => MapEntry(_$EventTypeEnumMap[k], e)));
  return val;
}

EventConfigurationData _$EventConfigurationDataFromJson(
        Map<String, dynamic> json) =>
    EventConfigurationData(
      transactionType: _$enumDecodeNullable(
          _$TransactionTypeEnumMap, json['transactionType']),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$EventConfigurationDataToJson(
    EventConfigurationData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull(
      'transactionType', _$TransactionTypeEnumMap[instance.transactionType]);
  return val;
}

const _$TransactionTypeEnumMap = {
  TransactionType.None: 'None',
  TransactionType.Any: 'Any',
  TransactionType.SimpleMajority: 'SimpleMajority',
  TransactionType.SuperMajority: 'SuperMajority',
  TransactionType.AbsoluteMajority: 'AbsoluteMajority',
};

EventInfo _$EventInfoFromJson(Map<String, dynamic> json) => EventInfo(
      data: json['data'] as Map<String, dynamic>?,
      deviceDescription: json['deviceDescription'] as String?,
      deviceName: json['deviceName'] as String?,
      deviceType: json['deviceType'] as String?,
      ipAddress: json['ipAddress'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      os: json['os'] as String?,
      userAgent: json['userAgent'] as String?,
    );

Map<String, dynamic> _$EventInfoToJson(EventInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('deviceDescription', instance.deviceDescription);
  writeNotNull('deviceName', instance.deviceName);
  writeNotNull('deviceType', instance.deviceType);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('location', instance.location);
  writeNotNull('os', instance.os);
  writeNotNull('userAgent', instance.userAgent);
  return val;
}

EventLog _$EventLogFromJson(Map<String, dynamic> json) => EventLog(
      id: json['id'] as num?,
      insertInstant: json['insertInstant'] as num?,
      message: json['message'] as String?,
      type: _$enumDecodeNullable(_$EventLogTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$EventLogToJson(EventLog instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('message', instance.message);
  writeNotNull('type', _$EventLogTypeEnumMap[instance.type]);
  return val;
}

const _$EventLogTypeEnumMap = {
  EventLogType.Information: 'Information',
  EventLogType.Debug: 'Debug',
  EventLogType.Error: 'Error',
};

EventLogConfiguration _$EventLogConfigurationFromJson(
        Map<String, dynamic> json) =>
    EventLogConfiguration(
      numberToRetain: json['numberToRetain'] as num?,
    );

Map<String, dynamic> _$EventLogConfigurationToJson(
    EventLogConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberToRetain', instance.numberToRetain);
  return val;
}

EventLogCreateEvent _$EventLogCreateEventFromJson(Map<String, dynamic> json) =>
    EventLogCreateEvent(
      eventLog: json['eventLog'] == null
          ? null
          : EventLog.fromJson(json['eventLog'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$EventLogCreateEventToJson(EventLogCreateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('eventLog', instance.eventLog);
  return val;
}

EventLogResponse _$EventLogResponseFromJson(Map<String, dynamic> json) =>
    EventLogResponse(
      eventLog: json['eventLog'] == null
          ? null
          : EventLog.fromJson(json['eventLog'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventLogResponseToJson(EventLogResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventLog', instance.eventLog);
  return val;
}

EventLogSearchCriteria _$EventLogSearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    EventLogSearchCriteria(
      end: json['end'] as num?,
      message: json['message'] as String?,
      start: json['start'] as num?,
      type: _$enumDecodeNullable(_$EventLogTypeEnumMap, json['type']),
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$EventLogSearchCriteriaToJson(
    EventLogSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('end', instance.end);
  writeNotNull('message', instance.message);
  writeNotNull('start', instance.start);
  writeNotNull('type', _$EventLogTypeEnumMap[instance.type]);
  return val;
}

EventLogSearchRequest _$EventLogSearchRequestFromJson(
        Map<String, dynamic> json) =>
    EventLogSearchRequest(
      search: json['search'] == null
          ? null
          : EventLogSearchCriteria.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventLogSearchRequestToJson(
    EventLogSearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  return val;
}

EventLogSearchResponse _$EventLogSearchResponseFromJson(
        Map<String, dynamic> json) =>
    EventLogSearchResponse(
      eventLogs: (json['eventLogs'] as List<dynamic>?)
          ?.map((e) => EventLog.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$EventLogSearchResponseToJson(
    EventLogSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventLogs', instance.eventLogs);
  writeNotNull('total', instance.total);
  return val;
}

EventRequest _$EventRequestFromJson(Map<String, dynamic> json) => EventRequest(
      event: json['event'] == null
          ? null
          : BaseEvent.fromJson(json['event'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EventRequestToJson(EventRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('event', instance.event);
  return val;
}

ExternalIdentifierConfiguration _$ExternalIdentifierConfigurationFromJson(
        Map<String, dynamic> json) =>
    ExternalIdentifierConfiguration(
      authorizationGrantIdTimeToLiveInSeconds:
          json['authorizationGrantIdTimeToLiveInSeconds'] as num?,
      changePasswordIdGenerator: json['changePasswordIdGenerator'] == null
          ? null
          : SecureGeneratorConfiguration.fromJson(
              json['changePasswordIdGenerator'] as Map<String, dynamic>),
      changePasswordIdTimeToLiveInSeconds:
          json['changePasswordIdTimeToLiveInSeconds'] as num?,
      deviceCodeTimeToLiveInSeconds:
          json['deviceCodeTimeToLiveInSeconds'] as num?,
      deviceUserCodeIdGenerator: json['deviceUserCodeIdGenerator'] == null
          ? null
          : SecureGeneratorConfiguration.fromJson(
              json['deviceUserCodeIdGenerator'] as Map<String, dynamic>),
      emailVerificationIdGenerator: json['emailVerificationIdGenerator'] == null
          ? null
          : SecureGeneratorConfiguration.fromJson(
              json['emailVerificationIdGenerator'] as Map<String, dynamic>),
      emailVerificationIdTimeToLiveInSeconds:
          json['emailVerificationIdTimeToLiveInSeconds'] as num?,
      emailVerificationOneTimeCodeGenerator:
          json['emailVerificationOneTimeCodeGenerator'] == null
              ? null
              : SecureGeneratorConfiguration.fromJson(
                  json['emailVerificationOneTimeCodeGenerator']
                      as Map<String, dynamic>),
      externalAuthenticationIdTimeToLiveInSeconds:
          json['externalAuthenticationIdTimeToLiveInSeconds'] as num?,
      oneTimePasswordTimeToLiveInSeconds:
          json['oneTimePasswordTimeToLiveInSeconds'] as num?,
      passwordlessLoginGenerator: json['passwordlessLoginGenerator'] == null
          ? null
          : SecureGeneratorConfiguration.fromJson(
              json['passwordlessLoginGenerator'] as Map<String, dynamic>),
      passwordlessLoginTimeToLiveInSeconds:
          json['passwordlessLoginTimeToLiveInSeconds'] as num?,
      pendingAccountLinkTimeToLiveInSeconds:
          json['pendingAccountLinkTimeToLiveInSeconds'] as num?,
      registrationVerificationIdGenerator:
          json['registrationVerificationIdGenerator'] == null
              ? null
              : SecureGeneratorConfiguration.fromJson(
                  json['registrationVerificationIdGenerator']
                      as Map<String, dynamic>),
      registrationVerificationIdTimeToLiveInSeconds:
          json['registrationVerificationIdTimeToLiveInSeconds'] as num?,
      registrationVerificationOneTimeCodeGenerator:
          json['registrationVerificationOneTimeCodeGenerator'] == null
              ? null
              : SecureGeneratorConfiguration.fromJson(
                  json['registrationVerificationOneTimeCodeGenerator']
                      as Map<String, dynamic>),
      samlv2AuthNRequestIdTimeToLiveInSeconds:
          json['samlv2AuthNRequestIdTimeToLiveInSeconds'] as num?,
      setupPasswordIdGenerator: json['setupPasswordIdGenerator'] == null
          ? null
          : SecureGeneratorConfiguration.fromJson(
              json['setupPasswordIdGenerator'] as Map<String, dynamic>),
      setupPasswordIdTimeToLiveInSeconds:
          json['setupPasswordIdTimeToLiveInSeconds'] as num?,
      trustTokenTimeToLiveInSeconds:
          json['trustTokenTimeToLiveInSeconds'] as num?,
      twoFactorIdTimeToLiveInSeconds:
          json['twoFactorIdTimeToLiveInSeconds'] as num?,
      twoFactorOneTimeCodeIdGenerator:
          json['twoFactorOneTimeCodeIdGenerator'] == null
              ? null
              : SecureGeneratorConfiguration.fromJson(
                  json['twoFactorOneTimeCodeIdGenerator']
                      as Map<String, dynamic>),
      twoFactorOneTimeCodeIdTimeToLiveInSeconds:
          json['twoFactorOneTimeCodeIdTimeToLiveInSeconds'] as num?,
      twoFactorTrustIdTimeToLiveInSeconds:
          json['twoFactorTrustIdTimeToLiveInSeconds'] as num?,
      webAuthnAuthenticationChallengeTimeToLiveInSeconds:
          json['webAuthnAuthenticationChallengeTimeToLiveInSeconds'] as num?,
      webAuthnRegistrationChallengeTimeToLiveInSeconds:
          json['webAuthnRegistrationChallengeTimeToLiveInSeconds'] as num?,
    );

Map<String, dynamic> _$ExternalIdentifierConfigurationToJson(
    ExternalIdentifierConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authorizationGrantIdTimeToLiveInSeconds',
      instance.authorizationGrantIdTimeToLiveInSeconds);
  writeNotNull('changePasswordIdGenerator', instance.changePasswordIdGenerator);
  writeNotNull('changePasswordIdTimeToLiveInSeconds',
      instance.changePasswordIdTimeToLiveInSeconds);
  writeNotNull(
      'deviceCodeTimeToLiveInSeconds', instance.deviceCodeTimeToLiveInSeconds);
  writeNotNull('deviceUserCodeIdGenerator', instance.deviceUserCodeIdGenerator);
  writeNotNull(
      'emailVerificationIdGenerator', instance.emailVerificationIdGenerator);
  writeNotNull('emailVerificationIdTimeToLiveInSeconds',
      instance.emailVerificationIdTimeToLiveInSeconds);
  writeNotNull('emailVerificationOneTimeCodeGenerator',
      instance.emailVerificationOneTimeCodeGenerator);
  writeNotNull('externalAuthenticationIdTimeToLiveInSeconds',
      instance.externalAuthenticationIdTimeToLiveInSeconds);
  writeNotNull('oneTimePasswordTimeToLiveInSeconds',
      instance.oneTimePasswordTimeToLiveInSeconds);
  writeNotNull(
      'passwordlessLoginGenerator', instance.passwordlessLoginGenerator);
  writeNotNull('passwordlessLoginTimeToLiveInSeconds',
      instance.passwordlessLoginTimeToLiveInSeconds);
  writeNotNull('pendingAccountLinkTimeToLiveInSeconds',
      instance.pendingAccountLinkTimeToLiveInSeconds);
  writeNotNull('registrationVerificationIdGenerator',
      instance.registrationVerificationIdGenerator);
  writeNotNull('registrationVerificationIdTimeToLiveInSeconds',
      instance.registrationVerificationIdTimeToLiveInSeconds);
  writeNotNull('registrationVerificationOneTimeCodeGenerator',
      instance.registrationVerificationOneTimeCodeGenerator);
  writeNotNull('samlv2AuthNRequestIdTimeToLiveInSeconds',
      instance.samlv2AuthNRequestIdTimeToLiveInSeconds);
  writeNotNull('setupPasswordIdGenerator', instance.setupPasswordIdGenerator);
  writeNotNull('setupPasswordIdTimeToLiveInSeconds',
      instance.setupPasswordIdTimeToLiveInSeconds);
  writeNotNull(
      'trustTokenTimeToLiveInSeconds', instance.trustTokenTimeToLiveInSeconds);
  writeNotNull('twoFactorIdTimeToLiveInSeconds',
      instance.twoFactorIdTimeToLiveInSeconds);
  writeNotNull('twoFactorOneTimeCodeIdGenerator',
      instance.twoFactorOneTimeCodeIdGenerator);
  writeNotNull('twoFactorOneTimeCodeIdTimeToLiveInSeconds',
      instance.twoFactorOneTimeCodeIdTimeToLiveInSeconds);
  writeNotNull('twoFactorTrustIdTimeToLiveInSeconds',
      instance.twoFactorTrustIdTimeToLiveInSeconds);
  writeNotNull('webAuthnAuthenticationChallengeTimeToLiveInSeconds',
      instance.webAuthnAuthenticationChallengeTimeToLiveInSeconds);
  writeNotNull('webAuthnRegistrationChallengeTimeToLiveInSeconds',
      instance.webAuthnRegistrationChallengeTimeToLiveInSeconds);
  return val;
}

ExternalJWTApplicationConfiguration
    _$ExternalJWTApplicationConfigurationFromJson(Map<String, dynamic> json) =>
        ExternalJWTApplicationConfiguration()
          ..enabled = json['enabled'] as bool?
          ..createRegistration = json['createRegistration'] as bool?
          ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$ExternalJWTApplicationConfigurationToJson(
    ExternalJWTApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  return val;
}

ExternalJWTIdentityProvider _$ExternalJWTIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    ExternalJWTIdentityProvider(
      claimMap: (json['claimMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      defaultKeyId: json['defaultKeyId'] as String?,
      domains:
          (json['domains'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      headerKeyParameter: json['headerKeyParameter'] as String?,
      oauth2: json['oauth2'] == null
          ? null
          : IdentityProviderOauth2Configuration.fromJson(
              json['oauth2'] as Map<String, dynamic>),
      uniqueIdentityClaim: json['uniqueIdentityClaim'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            ExternalJWTApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$ExternalJWTIdentityProviderToJson(
    ExternalJWTIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('claimMap', instance.claimMap);
  writeNotNull('defaultKeyId', instance.defaultKeyId);
  writeNotNull('domains', instance.domains?.toList());
  writeNotNull('headerKeyParameter', instance.headerKeyParameter);
  writeNotNull('oauth2', instance.oauth2);
  writeNotNull('uniqueIdentityClaim', instance.uniqueIdentityClaim);
  return val;
}

FacebookApplicationConfiguration _$FacebookApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    FacebookApplicationConfiguration(
      appId: json['appId'] as String?,
      buttonText: json['buttonText'] as String?,
      client_secret: json['client_secret'] as String?,
      fields: json['fields'] as String?,
      loginMethod: _$enumDecodeNullable(
          _$IdentityProviderLoginMethodEnumMap, json['loginMethod']),
      permissions: json['permissions'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$FacebookApplicationConfigurationToJson(
    FacebookApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('appId', instance.appId);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('fields', instance.fields);
  writeNotNull('loginMethod',
      _$IdentityProviderLoginMethodEnumMap[instance.loginMethod]);
  writeNotNull('permissions', instance.permissions);
  return val;
}

const _$IdentityProviderLoginMethodEnumMap = {
  IdentityProviderLoginMethod.UsePopup: 'UsePopup',
  IdentityProviderLoginMethod.UseRedirect: 'UseRedirect',
};

FacebookIdentityProvider _$FacebookIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    FacebookIdentityProvider(
      appId: json['appId'] as String?,
      buttonText: json['buttonText'] as String?,
      client_secret: json['client_secret'] as String?,
      fields: json['fields'] as String?,
      loginMethod: _$enumDecodeNullable(
          _$IdentityProviderLoginMethodEnumMap, json['loginMethod']),
      permissions: json['permissions'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            FacebookApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$FacebookIdentityProviderToJson(
    FacebookIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('appId', instance.appId);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('fields', instance.fields);
  writeNotNull('loginMethod',
      _$IdentityProviderLoginMethodEnumMap[instance.loginMethod]);
  writeNotNull('permissions', instance.permissions);
  return val;
}

FailedAuthenticationActionCancelPolicy
    _$FailedAuthenticationActionCancelPolicyFromJson(
            Map<String, dynamic> json) =>
        FailedAuthenticationActionCancelPolicy(
          onPasswordReset: json['onPasswordReset'] as bool?,
        );

Map<String, dynamic> _$FailedAuthenticationActionCancelPolicyToJson(
    FailedAuthenticationActionCancelPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('onPasswordReset', instance.onPasswordReset);
  return val;
}

FailedAuthenticationConfiguration _$FailedAuthenticationConfigurationFromJson(
        Map<String, dynamic> json) =>
    FailedAuthenticationConfiguration(
      actionCancelPolicy: json['actionCancelPolicy'] == null
          ? null
          : FailedAuthenticationActionCancelPolicy.fromJson(
              json['actionCancelPolicy'] as Map<String, dynamic>),
      actionDuration: json['actionDuration'] as num?,
      actionDurationUnit:
          _$enumDecodeNullable(_$ExpiryUnitEnumMap, json['actionDurationUnit']),
      emailUser: json['emailUser'] as bool?,
      resetCountInSeconds: json['resetCountInSeconds'] as num?,
      tooManyAttempts: json['tooManyAttempts'] as num?,
      userActionId: json['userActionId'] as String?,
    );

Map<String, dynamic> _$FailedAuthenticationConfigurationToJson(
    FailedAuthenticationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('actionCancelPolicy', instance.actionCancelPolicy);
  writeNotNull('actionDuration', instance.actionDuration);
  writeNotNull(
      'actionDurationUnit', _$ExpiryUnitEnumMap[instance.actionDurationUnit]);
  writeNotNull('emailUser', instance.emailUser);
  writeNotNull('resetCountInSeconds', instance.resetCountInSeconds);
  writeNotNull('tooManyAttempts', instance.tooManyAttempts);
  writeNotNull('userActionId', instance.userActionId);
  return val;
}

const _$ExpiryUnitEnumMap = {
  ExpiryUnit.MINUTES: 'MINUTES',
  ExpiryUnit.HOURS: 'HOURS',
  ExpiryUnit.DAYS: 'DAYS',
  ExpiryUnit.WEEKS: 'WEEKS',
  ExpiryUnit.MONTHS: 'MONTHS',
  ExpiryUnit.YEARS: 'YEARS',
};

Family _$FamilyFromJson(Map<String, dynamic> json) => Family(
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => FamilyMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FamilyToJson(Family instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('members', instance.members);
  return val;
}

FamilyConfiguration _$FamilyConfigurationFromJson(Map<String, dynamic> json) =>
    FamilyConfiguration(
      allowChildRegistrations: json['allowChildRegistrations'] as bool?,
      confirmChildEmailTemplateId:
          json['confirmChildEmailTemplateId'] as String?,
      deleteOrphanedAccounts: json['deleteOrphanedAccounts'] as bool?,
      deleteOrphanedAccountsDays: json['deleteOrphanedAccountsDays'] as num?,
      familyRequestEmailTemplateId:
          json['familyRequestEmailTemplateId'] as String?,
      maximumChildAge: json['maximumChildAge'] as num?,
      minimumOwnerAge: json['minimumOwnerAge'] as num?,
      parentEmailRequired: json['parentEmailRequired'] as bool?,
      parentRegistrationEmailTemplateId:
          json['parentRegistrationEmailTemplateId'] as String?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$FamilyConfigurationToJson(FamilyConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('allowChildRegistrations', instance.allowChildRegistrations);
  writeNotNull(
      'confirmChildEmailTemplateId', instance.confirmChildEmailTemplateId);
  writeNotNull('deleteOrphanedAccounts', instance.deleteOrphanedAccounts);
  writeNotNull(
      'deleteOrphanedAccountsDays', instance.deleteOrphanedAccountsDays);
  writeNotNull(
      'familyRequestEmailTemplateId', instance.familyRequestEmailTemplateId);
  writeNotNull('maximumChildAge', instance.maximumChildAge);
  writeNotNull('minimumOwnerAge', instance.minimumOwnerAge);
  writeNotNull('parentEmailRequired', instance.parentEmailRequired);
  writeNotNull('parentRegistrationEmailTemplateId',
      instance.parentRegistrationEmailTemplateId);
  return val;
}

FamilyEmailRequest _$FamilyEmailRequestFromJson(Map<String, dynamic> json) =>
    FamilyEmailRequest(
      parentEmail: json['parentEmail'] as String?,
    );

Map<String, dynamic> _$FamilyEmailRequestToJson(FamilyEmailRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parentEmail', instance.parentEmail);
  return val;
}

FamilyMember _$FamilyMemberFromJson(Map<String, dynamic> json) => FamilyMember(
      data: json['data'] as Map<String, dynamic>?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      owner: json['owner'] as bool?,
      role: _$enumDecodeNullable(_$FamilyRoleEnumMap, json['role']),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$FamilyMemberToJson(FamilyMember instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('owner', instance.owner);
  writeNotNull('role', _$FamilyRoleEnumMap[instance.role]);
  writeNotNull('userId', instance.userId);
  return val;
}

const _$FamilyRoleEnumMap = {
  FamilyRole.Child: 'Child',
  FamilyRole.Teen: 'Teen',
  FamilyRole.Adult: 'Adult',
};

FamilyRequest _$FamilyRequestFromJson(Map<String, dynamic> json) =>
    FamilyRequest(
      familyMember: json['familyMember'] == null
          ? null
          : FamilyMember.fromJson(json['familyMember'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamilyRequestToJson(FamilyRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('familyMember', instance.familyMember);
  return val;
}

FamilyResponse _$FamilyResponseFromJson(Map<String, dynamic> json) =>
    FamilyResponse(
      families: (json['families'] as List<dynamic>?)
          ?.map((e) => Family.fromJson(e as Map<String, dynamic>))
          .toList(),
      family: json['family'] == null
          ? null
          : Family.fromJson(json['family'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FamilyResponseToJson(FamilyResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('families', instance.families);
  writeNotNull('family', instance.family);
  return val;
}

ForgotPasswordRequest _$ForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordRequest(
      applicationId: json['applicationId'] as String?,
      changePasswordId: json['changePasswordId'] as String?,
      email: json['email'] as String?,
      loginId: json['loginId'] as String?,
      sendForgotPasswordEmail: json['sendForgotPasswordEmail'] as bool?,
      state: json['state'] as Map<String, dynamic>?,
      username: json['username'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$ForgotPasswordRequestToJson(
    ForgotPasswordRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('changePasswordId', instance.changePasswordId);
  writeNotNull('email', instance.email);
  writeNotNull('loginId', instance.loginId);
  writeNotNull('sendForgotPasswordEmail', instance.sendForgotPasswordEmail);
  writeNotNull('state', instance.state);
  writeNotNull('username', instance.username);
  return val;
}

ForgotPasswordResponse _$ForgotPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    ForgotPasswordResponse(
      changePasswordId: json['changePasswordId'] as String?,
    );

Map<String, dynamic> _$ForgotPasswordResponseToJson(
    ForgotPasswordResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('changePasswordId', instance.changePasswordId);
  return val;
}

Form _$FormFromJson(Map<String, dynamic> json) => Form(
      data: json['data'] as Map<String, dynamic>?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => FormStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: _$enumDecodeNullable(_$FormTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$FormToJson(Form instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('steps', instance.steps);
  writeNotNull('type', _$FormTypeEnumMap[instance.type]);
  return val;
}

const _$FormTypeEnumMap = {
  FormType.registration: 'registration',
  FormType.adminRegistration: 'adminRegistration',
  FormType.adminUser: 'adminUser',
  FormType.selfServiceUser: 'selfServiceUser',
};

FormField _$FormFieldFromJson(Map<String, dynamic> json) => FormField(
      confirm: json['confirm'] as bool?,
      consentId: json['consentId'] as String?,
      control: _$enumDecodeNullable(_$FormControlEnumMap, json['control']),
      data: json['data'] as Map<String, dynamic>?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      key: json['key'] as String?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
      required: json['required'] as bool?,
      type: _$enumDecodeNullable(_$FormDataTypeEnumMap, json['type']),
      validator: json['validator'] == null
          ? null
          : FormFieldValidator.fromJson(
              json['validator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FormFieldToJson(FormField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('confirm', instance.confirm);
  writeNotNull('consentId', instance.consentId);
  writeNotNull('control', _$FormControlEnumMap[instance.control]);
  writeNotNull('data', instance.data);
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('key', instance.key);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('options', instance.options);
  writeNotNull('required', instance.required);
  writeNotNull('type', _$FormDataTypeEnumMap[instance.type]);
  writeNotNull('validator', instance.validator);
  return val;
}

const _$FormControlEnumMap = {
  FormControl.checkbox: 'checkbox',
  FormControl.number: 'number',
  FormControl.password: 'password',
  FormControl.radio: 'radio',
  FormControl.select: 'select',
  FormControl.textarea: 'textarea',
  FormControl.text: 'text',
};

const _$FormDataTypeEnumMap = {
  FormDataType.bool: 'bool',
  FormDataType.consent: 'consent',
  FormDataType.date: 'date',
  FormDataType.email: 'email',
  FormDataType.number: 'number',
  FormDataType.string: 'string',
};

FormFieldRequest _$FormFieldRequestFromJson(Map<String, dynamic> json) =>
    FormFieldRequest(
      field: json['field'] == null
          ? null
          : FormField.fromJson(json['field'] as Map<String, dynamic>),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FormField.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormFieldRequestToJson(FormFieldRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', instance.field);
  writeNotNull('fields', instance.fields);
  return val;
}

FormFieldResponse _$FormFieldResponseFromJson(Map<String, dynamic> json) =>
    FormFieldResponse(
      field: json['field'] == null
          ? null
          : FormField.fromJson(json['field'] as Map<String, dynamic>),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => FormField.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormFieldResponseToJson(FormFieldResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', instance.field);
  writeNotNull('fields', instance.fields);
  return val;
}

FormFieldValidator _$FormFieldValidatorFromJson(Map<String, dynamic> json) =>
    FormFieldValidator(
      expression: json['expression'] as String?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$FormFieldValidatorToJson(FormFieldValidator instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('expression', instance.expression);
  return val;
}

FormRequest _$FormRequestFromJson(Map<String, dynamic> json) => FormRequest(
      form: json['form'] == null
          ? null
          : Form.fromJson(json['form'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FormRequestToJson(FormRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('form', instance.form);
  return val;
}

FormResponse _$FormResponseFromJson(Map<String, dynamic> json) => FormResponse(
      form: json['form'] == null
          ? null
          : Form.fromJson(json['form'] as Map<String, dynamic>),
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) => Form.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FormResponseToJson(FormResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('form', instance.form);
  writeNotNull('forms', instance.forms);
  return val;
}

FormStep _$FormStepFromJson(Map<String, dynamic> json) => FormStep(
      fields:
          (json['fields'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$FormStepToJson(FormStep instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fields', instance.fields);
  return val;
}

FusionAuthConnectorConfiguration _$FusionAuthConnectorConfigurationFromJson(
        Map<String, dynamic> json) =>
    FusionAuthConnectorConfiguration()
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool? ?? false
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..name = json['name'] as String?
      ..type = _$enumDecodeNullable(_$ConnectorTypeEnumMap, json['type']);

Map<String, dynamic> _$FusionAuthConnectorConfigurationToJson(
    FusionAuthConnectorConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('debug', instance.debug);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$ConnectorTypeEnumMap[instance.type]);
  return val;
}

GenericConnectorConfiguration _$GenericConnectorConfigurationFromJson(
        Map<String, dynamic> json) =>
    GenericConnectorConfiguration(
      authenticationURL: json['authenticationURL'] as String?,
      connectTimeout: json['connectTimeout'] as num?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      httpAuthenticationPassword: json['httpAuthenticationPassword'] as String?,
      httpAuthenticationUsername: json['httpAuthenticationUsername'] as String?,
      readTimeout: json['readTimeout'] as num?,
      sslCertificateKeyId: json['sslCertificateKeyId'] as String?,
    )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool? ?? false
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..name = json['name'] as String?
      ..type = _$enumDecodeNullable(_$ConnectorTypeEnumMap, json['type']);

Map<String, dynamic> _$GenericConnectorConfigurationToJson(
    GenericConnectorConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('debug', instance.debug);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$ConnectorTypeEnumMap[instance.type]);
  writeNotNull('authenticationURL', instance.authenticationURL);
  writeNotNull('connectTimeout', instance.connectTimeout);
  writeNotNull('headers', instance.headers);
  writeNotNull(
      'httpAuthenticationPassword', instance.httpAuthenticationPassword);
  writeNotNull(
      'httpAuthenticationUsername', instance.httpAuthenticationUsername);
  writeNotNull('readTimeout', instance.readTimeout);
  writeNotNull('sslCertificateKeyId', instance.sslCertificateKeyId);
  return val;
}

GenericMessengerConfiguration _$GenericMessengerConfigurationFromJson(
        Map<String, dynamic> json) =>
    GenericMessengerConfiguration(
      connectTimeout: json['connectTimeout'] as num?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      httpAuthenticationPassword: json['httpAuthenticationPassword'] as String?,
      httpAuthenticationUsername: json['httpAuthenticationUsername'] as String?,
      readTimeout: json['readTimeout'] as num?,
      sslCertificate: json['sslCertificate'] as String?,
      url: json['url'] as String?,
    )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool? ?? false
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..name = json['name'] as String?
      ..transport = json['transport'] as String?
      ..type = _$enumDecodeNullable(_$MessengerTypeEnumMap, json['type']);

Map<String, dynamic> _$GenericMessengerConfigurationToJson(
    GenericMessengerConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('transport', instance.transport);
  writeNotNull('type', _$MessengerTypeEnumMap[instance.type]);
  writeNotNull('connectTimeout', instance.connectTimeout);
  writeNotNull('headers', instance.headers);
  writeNotNull(
      'httpAuthenticationPassword', instance.httpAuthenticationPassword);
  writeNotNull(
      'httpAuthenticationUsername', instance.httpAuthenticationUsername);
  writeNotNull('readTimeout', instance.readTimeout);
  writeNotNull('sslCertificate', instance.sslCertificate);
  writeNotNull('url', instance.url);
  return val;
}

GoogleApplicationConfiguration _$GoogleApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    GoogleApplicationConfiguration(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      loginMethod: _$enumDecodeNullable(
          _$IdentityProviderLoginMethodEnumMap, json['loginMethod']),
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$GoogleApplicationConfigurationToJson(
    GoogleApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('loginMethod',
      _$IdentityProviderLoginMethodEnumMap[instance.loginMethod]);
  writeNotNull('scope', instance.scope);
  return val;
}

GoogleIdentityProvider _$GoogleIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    GoogleIdentityProvider(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      loginMethod: _$enumDecodeNullable(
          _$IdentityProviderLoginMethodEnumMap, json['loginMethod']),
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            GoogleApplicationConfiguration.fromJson(e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$GoogleIdentityProviderToJson(
    GoogleIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('loginMethod',
      _$IdentityProviderLoginMethodEnumMap[instance.loginMethod]);
  writeNotNull('scope', instance.scope);
  return val;
}

Group _$GroupFromJson(Map<String, dynamic> json) => Group(
      data: json['data'] as Map<String, dynamic>?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
      roles: (json['roles'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => ApplicationRole.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
      tenantId: json['tenantId'] as String?,
    );

Map<String, dynamic> _$GroupToJson(Group instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('roles', instance.roles);
  writeNotNull('tenantId', instance.tenantId);
  return val;
}

GroupCreateCompleteEvent _$GroupCreateCompleteEventFromJson(
        Map<String, dynamic> json) =>
    GroupCreateCompleteEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupCreateCompleteEventToJson(
    GroupCreateCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  return val;
}

GroupCreateEvent _$GroupCreateEventFromJson(Map<String, dynamic> json) =>
    GroupCreateEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupCreateEventToJson(GroupCreateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  return val;
}

GroupDeleteCompleteEvent _$GroupDeleteCompleteEventFromJson(
        Map<String, dynamic> json) =>
    GroupDeleteCompleteEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupDeleteCompleteEventToJson(
    GroupDeleteCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  return val;
}

GroupDeleteEvent _$GroupDeleteEventFromJson(Map<String, dynamic> json) =>
    GroupDeleteEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupDeleteEventToJson(GroupDeleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  return val;
}

GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) => GroupMember(
      data: json['data'] as Map<String, dynamic>?,
      groupId: json['groupId'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$GroupMemberToJson(GroupMember instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('groupId', instance.groupId);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('user', instance.user);
  writeNotNull('userId', instance.userId);
  return val;
}

GroupMemberAddCompleteEvent _$GroupMemberAddCompleteEventFromJson(
        Map<String, dynamic> json) =>
    GroupMemberAddCompleteEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupMemberAddCompleteEventToJson(
    GroupMemberAddCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  writeNotNull('members', instance.members);
  return val;
}

GroupMemberAddEvent _$GroupMemberAddEventFromJson(Map<String, dynamic> json) =>
    GroupMemberAddEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupMemberAddEventToJson(GroupMemberAddEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  writeNotNull('members', instance.members);
  return val;
}

GroupMemberRemoveCompleteEvent _$GroupMemberRemoveCompleteEventFromJson(
        Map<String, dynamic> json) =>
    GroupMemberRemoveCompleteEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupMemberRemoveCompleteEventToJson(
    GroupMemberRemoveCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  writeNotNull('members', instance.members);
  return val;
}

GroupMemberRemoveEvent _$GroupMemberRemoveEventFromJson(
        Map<String, dynamic> json) =>
    GroupMemberRemoveEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupMemberRemoveEventToJson(
    GroupMemberRemoveEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  writeNotNull('members', instance.members);
  return val;
}

GroupMemberSearchCriteria _$GroupMemberSearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    GroupMemberSearchCriteria(
      groupId: json['groupId'] as String?,
      tenantId: json['tenantId'] as String?,
      userId: json['userId'] as String?,
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$GroupMemberSearchCriteriaToJson(
    GroupMemberSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('groupId', instance.groupId);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('userId', instance.userId);
  return val;
}

GroupMemberSearchRequest _$GroupMemberSearchRequestFromJson(
        Map<String, dynamic> json) =>
    GroupMemberSearchRequest(
      search: json['search'] == null
          ? null
          : GroupMemberSearchCriteria.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupMemberSearchRequestToJson(
    GroupMemberSearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  return val;
}

GroupMemberSearchResponse _$GroupMemberSearchResponseFromJson(
        Map<String, dynamic> json) =>
    GroupMemberSearchResponse(
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$GroupMemberSearchResponseToJson(
    GroupMemberSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('members', instance.members);
  writeNotNull('total', instance.total);
  return val;
}

GroupMemberUpdateCompleteEvent _$GroupMemberUpdateCompleteEventFromJson(
        Map<String, dynamic> json) =>
    GroupMemberUpdateCompleteEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupMemberUpdateCompleteEventToJson(
    GroupMemberUpdateCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  writeNotNull('members', instance.members);
  return val;
}

GroupMemberUpdateEvent _$GroupMemberUpdateEventFromJson(
        Map<String, dynamic> json) =>
    GroupMemberUpdateEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupMemberUpdateEventToJson(
    GroupMemberUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  writeNotNull('members', instance.members);
  return val;
}

GroupRequest _$GroupRequestFromJson(Map<String, dynamic> json) => GroupRequest(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      roleIds:
          (json['roleIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GroupRequestToJson(GroupRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('roleIds', instance.roleIds);
  return val;
}

GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) =>
    GroupResponse(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GroupResponseToJson(GroupResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('groups', instance.groups);
  return val;
}

GroupSearchCriteria _$GroupSearchCriteriaFromJson(Map<String, dynamic> json) =>
    GroupSearchCriteria(
      name: json['name'] as String?,
      tenantId: json['tenantId'] as String?,
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$GroupSearchCriteriaToJson(GroupSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('name', instance.name);
  writeNotNull('tenantId', instance.tenantId);
  return val;
}

GroupSearchRequest _$GroupSearchRequestFromJson(Map<String, dynamic> json) =>
    GroupSearchRequest(
      search: json['search'] == null
          ? null
          : GroupSearchCriteria.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GroupSearchRequestToJson(GroupSearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  return val;
}

GroupSearchResponse _$GroupSearchResponseFromJson(Map<String, dynamic> json) =>
    GroupSearchResponse(
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$GroupSearchResponseToJson(GroupSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('groups', instance.groups);
  writeNotNull('total', instance.total);
  return val;
}

GroupUpdateCompleteEvent _$GroupUpdateCompleteEventFromJson(
        Map<String, dynamic> json) =>
    GroupUpdateCompleteEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      original: json['original'] == null
          ? null
          : Group.fromJson(json['original'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupUpdateCompleteEventToJson(
    GroupUpdateCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  writeNotNull('original', instance.original);
  return val;
}

GroupUpdateEvent _$GroupUpdateEventFromJson(Map<String, dynamic> json) =>
    GroupUpdateEvent(
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      original: json['original'] == null
          ? null
          : Group.fromJson(json['original'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$GroupUpdateEventToJson(GroupUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('group', instance.group);
  writeNotNull('original', instance.original);
  return val;
}

HistoryItem _$HistoryItemFromJson(Map<String, dynamic> json) => HistoryItem(
      actionerUserId: json['actionerUserId'] as String?,
      comment: json['comment'] as String?,
      createInstant: json['createInstant'] as num?,
      expiry: json['expiry'] as num?,
    );

Map<String, dynamic> _$HistoryItemToJson(HistoryItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('actionerUserId', instance.actionerUserId);
  writeNotNull('comment', instance.comment);
  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('expiry', instance.expiry);
  return val;
}

HYPRApplicationConfiguration _$HYPRApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    HYPRApplicationConfiguration(
      relyingPartyApplicationId: json['relyingPartyApplicationId'] as String?,
      relyingPartyURL: json['relyingPartyURL'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$HYPRApplicationConfigurationToJson(
    HYPRApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('relyingPartyApplicationId', instance.relyingPartyApplicationId);
  writeNotNull('relyingPartyURL', instance.relyingPartyURL);
  return val;
}

HYPRIdentityProvider _$HYPRIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    HYPRIdentityProvider(
      relyingPartyApplicationId: json['relyingPartyApplicationId'] as String?,
      relyingPartyURL: json['relyingPartyURL'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            HYPRApplicationConfiguration.fromJson(e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$HYPRIdentityProviderToJson(
    HYPRIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('relyingPartyApplicationId', instance.relyingPartyApplicationId);
  writeNotNull('relyingPartyURL', instance.relyingPartyURL);
  return val;
}

IdentityProviderDetails _$IdentityProviderDetailsFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderDetails(
      applicationIds: (json['applicationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['id'] as String?,
      idpEndpoint: json['idpEndpoint'] as String?,
      name: json['name'] as String?,
      oauth2: json['oauth2'] == null
          ? null
          : IdentityProviderOauth2Configuration.fromJson(
              json['oauth2'] as Map<String, dynamic>),
      type: _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$IdentityProviderDetailsToJson(
    IdentityProviderDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationIds', instance.applicationIds);
  writeNotNull('id', instance.id);
  writeNotNull('idpEndpoint', instance.idpEndpoint);
  writeNotNull('name', instance.name);
  writeNotNull('oauth2', instance.oauth2);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  return val;
}

IdentityProviderLimitUserLinkingPolicy
    _$IdentityProviderLimitUserLinkingPolicyFromJson(
            Map<String, dynamic> json) =>
        IdentityProviderLimitUserLinkingPolicy(
          maximumLinks: json['maximumLinks'] as num?,
        )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$IdentityProviderLimitUserLinkingPolicyToJson(
    IdentityProviderLimitUserLinkingPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('maximumLinks', instance.maximumLinks);
  return val;
}

IdentityProviderLink _$IdentityProviderLinkFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderLink(
      data: json['data'] as Map<String, dynamic>?,
      displayName: json['displayName'] as String?,
      identityProviderId: json['identityProviderId'] as String?,
      identityProviderUserId: json['identityProviderUserId'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastLoginInstant: json['lastLoginInstant'] as num?,
      tenantId: json['tenantId'] as String?,
      token: json['token'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$IdentityProviderLinkToJson(
    IdentityProviderLink instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('identityProviderId', instance.identityProviderId);
  writeNotNull('identityProviderUserId', instance.identityProviderUserId);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastLoginInstant', instance.lastLoginInstant);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('token', instance.token);
  writeNotNull('userId', instance.userId);
  return val;
}

IdentityProviderLinkRequest _$IdentityProviderLinkRequestFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderLinkRequest(
      displayName: json['displayName'] as String?,
      identityProviderId: json['identityProviderId'] as String?,
      identityProviderUserId: json['identityProviderUserId'] as String?,
      pendingIdPLinkId: json['pendingIdPLinkId'] as String?,
      userId: json['userId'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$IdentityProviderLinkRequestToJson(
    IdentityProviderLinkRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('identityProviderId', instance.identityProviderId);
  writeNotNull('identityProviderUserId', instance.identityProviderUserId);
  writeNotNull('pendingIdPLinkId', instance.pendingIdPLinkId);
  writeNotNull('userId', instance.userId);
  return val;
}

IdentityProviderLinkResponse _$IdentityProviderLinkResponseFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderLinkResponse(
      identityProviderLink: json['identityProviderLink'] == null
          ? null
          : IdentityProviderLink.fromJson(
              json['identityProviderLink'] as Map<String, dynamic>),
      identityProviderLinks: (json['identityProviderLinks'] as List<dynamic>?)
          ?.map((e) => IdentityProviderLink.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IdentityProviderLinkResponseToJson(
    IdentityProviderLinkResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identityProviderLink', instance.identityProviderLink);
  writeNotNull('identityProviderLinks', instance.identityProviderLinks);
  return val;
}

IdentityProviderLoginRequest _$IdentityProviderLoginRequestFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderLoginRequest(
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      encodedJWT: json['encodedJWT'] as String?,
      identityProviderId: json['identityProviderId'] as String?,
      noLink: json['noLink'] as bool?,
    )
      ..eventInfo = json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>)
      ..applicationId = json['applicationId'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..metaData = json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>)
      ..newDevice = json['newDevice'] as bool?
      ..noJWT = json['noJWT'] as bool?;

Map<String, dynamic> _$IdentityProviderLoginRequestToJson(
    IdentityProviderLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('newDevice', instance.newDevice);
  writeNotNull('noJWT', instance.noJWT);
  writeNotNull('data', instance.data);
  writeNotNull('encodedJWT', instance.encodedJWT);
  writeNotNull('identityProviderId', instance.identityProviderId);
  writeNotNull('noLink', instance.noLink);
  return val;
}

IdentityProviderOauth2Configuration
    _$IdentityProviderOauth2ConfigurationFromJson(Map<String, dynamic> json) =>
        IdentityProviderOauth2Configuration(
          authorization_endpoint: json['authorization_endpoint'] as String?,
          client_id: json['client_id'] as String?,
          client_secret: json['client_secret'] as String?,
          clientAuthenticationMethod: _$enumDecodeNullable(
              _$ClientAuthenticationMethodEnumMap,
              json['clientAuthenticationMethod']),
          emailClaim: json['emailClaim'] as String?,
          issuer: json['issuer'] as String?,
          scope: json['scope'] as String?,
          token_endpoint: json['token_endpoint'] as String?,
          uniqueIdClaim: json['uniqueIdClaim'] as String?,
          userinfo_endpoint: json['userinfo_endpoint'] as String?,
          usernameClaim: json['usernameClaim'] as String?,
        );

Map<String, dynamic> _$IdentityProviderOauth2ConfigurationToJson(
    IdentityProviderOauth2Configuration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authorization_endpoint', instance.authorization_endpoint);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('clientAuthenticationMethod',
      _$ClientAuthenticationMethodEnumMap[instance.clientAuthenticationMethod]);
  writeNotNull('emailClaim', instance.emailClaim);
  writeNotNull('issuer', instance.issuer);
  writeNotNull('scope', instance.scope);
  writeNotNull('token_endpoint', instance.token_endpoint);
  writeNotNull('uniqueIdClaim', instance.uniqueIdClaim);
  writeNotNull('userinfo_endpoint', instance.userinfo_endpoint);
  writeNotNull('usernameClaim', instance.usernameClaim);
  return val;
}

const _$ClientAuthenticationMethodEnumMap = {
  ClientAuthenticationMethod.none: 'none',
  ClientAuthenticationMethod.client_secret_basic: 'client_secret_basic',
  ClientAuthenticationMethod.client_secret_post: 'client_secret_post',
};

IdentityProviderRequest _$IdentityProviderRequestFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderRequest(
      identityProvider: json['identityProvider'] == null
          ? null
          : BaseIdentityProviderFromJson(
              json['identityProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IdentityProviderRequestToJson(
    IdentityProviderRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identityProvider', instance.identityProvider);
  return val;
}

IdentityProviderResponse _$IdentityProviderResponseFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderResponse(
      identityProvider: json['identityProvider'] == null
          ? null
          : BaseIdentityProviderFromJson(
              json['identityProvider'] as Map<String, dynamic>),
      identityProviders: (json['identityProviders'] as List<dynamic>?)
          ?.map((e) => BaseIdentityProviderFromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IdentityProviderResponseToJson(
    IdentityProviderResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identityProvider', instance.identityProvider);
  writeNotNull('identityProviders', instance.identityProviders);
  return val;
}

IdentityProviderStartLoginRequest _$IdentityProviderStartLoginRequestFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderStartLoginRequest(
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      identityProviderId: json['identityProviderId'] as String?,
      loginId: json['loginId'] as String?,
      state: json['state'] as Map<String, dynamic>?,
    )
      ..eventInfo = json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>)
      ..applicationId = json['applicationId'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..metaData = json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>)
      ..newDevice = json['newDevice'] as bool?
      ..noJWT = json['noJWT'] as bool?;

Map<String, dynamic> _$IdentityProviderStartLoginRequestToJson(
    IdentityProviderStartLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('newDevice', instance.newDevice);
  writeNotNull('noJWT', instance.noJWT);
  writeNotNull('data', instance.data);
  writeNotNull('identityProviderId', instance.identityProviderId);
  writeNotNull('loginId', instance.loginId);
  writeNotNull('state', instance.state);
  return val;
}

IdentityProviderStartLoginResponse _$IdentityProviderStartLoginResponseFromJson(
        Map<String, dynamic> json) =>
    IdentityProviderStartLoginResponse(
      code: json['code'] as String?,
    );

Map<String, dynamic> _$IdentityProviderStartLoginResponseToJson(
    IdentityProviderStartLoginResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  return val;
}

IdentityProviderTenantConfiguration
    _$IdentityProviderTenantConfigurationFromJson(Map<String, dynamic> json) =>
        IdentityProviderTenantConfiguration(
          data: json['data'] as Map<String, dynamic>,
          limitUserLinkCount: IdentityProviderLimitUserLinkingPolicy.fromJson(
              json['limitUserLinkCount'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IdentityProviderTenantConfigurationToJson(
        IdentityProviderTenantConfiguration instance) =>
    <String, dynamic>{
      'data': instance.data,
      'limitUserLinkCount': instance.limitUserLinkCount,
    };

ImportRequest _$ImportRequestFromJson(Map<String, dynamic> json) =>
    ImportRequest(
      encryptionScheme: json['encryptionScheme'] as String,
      factor: json['factor'] as num,
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      validateDbConstraints: json['validateDbConstraints'] as bool,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$ImportRequestToJson(ImportRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  val['encryptionScheme'] = instance.encryptionScheme;
  val['factor'] = instance.factor;
  val['users'] = instance.users;
  val['validateDbConstraints'] = instance.validateDbConstraints;
  return val;
}

InstanceEvent _$InstanceEventFromJson(Map<String, dynamic> json) =>
    InstanceEvent();

Map<String, dynamic> _$InstanceEventToJson(InstanceEvent instance) =>
    <String, dynamic>{};

IntegrationRequest _$IntegrationRequestFromJson(Map<String, dynamic> json) =>
    IntegrationRequest(
      integrations: json['integrations'] == null
          ? null
          : Integrations.fromJson(json['integrations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntegrationRequestToJson(IntegrationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('integrations', instance.integrations);
  return val;
}

IntegrationResponse _$IntegrationResponseFromJson(Map<String, dynamic> json) =>
    IntegrationResponse(
      integrations: json['integrations'] == null
          ? null
          : Integrations.fromJson(json['integrations'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntegrationResponseToJson(IntegrationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('integrations', instance.integrations);
  return val;
}

Integrations _$IntegrationsFromJson(Map<String, dynamic> json) => Integrations(
      cleanspeak: json['cleanspeak'] == null
          ? null
          : CleanSpeakConfiguration.fromJson(
              json['cleanspeak'] as Map<String, dynamic>),
      kafka: json['kafka'] == null
          ? null
          : KafkaConfiguration.fromJson(json['kafka'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntegrationsToJson(Integrations instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cleanspeak', instance.cleanspeak);
  writeNotNull('kafka', instance.kafka);
  return val;
}

IPAccessControlEntry _$IPAccessControlEntryFromJson(
        Map<String, dynamic> json) =>
    IPAccessControlEntry(
      action: _$enumDecodeNullable(
          _$IPAccessControlEntryActionEnumMap, json['action']),
      endIPAddress: json['endIPAddress'] as String?,
      startIPAddress: json['startIPAddress'] as String?,
    );

Map<String, dynamic> _$IPAccessControlEntryToJson(
    IPAccessControlEntry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action', _$IPAccessControlEntryActionEnumMap[instance.action]);
  writeNotNull('endIPAddress', instance.endIPAddress);
  writeNotNull('startIPAddress', instance.startIPAddress);
  return val;
}

const _$IPAccessControlEntryActionEnumMap = {
  IPAccessControlEntryAction.Allow: 'Allow',
  IPAccessControlEntryAction.Block: 'Block',
};

IPAccessControlList _$IPAccessControlListFromJson(Map<String, dynamic> json) =>
    IPAccessControlList(
      data: json['data'] as Map<String, dynamic>?,
      entries: (json['entries'] as List<dynamic>?)
          ?.map((e) => IPAccessControlEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$IPAccessControlListToJson(IPAccessControlList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('entries', instance.entries);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  return val;
}

IPAccessControlListRequest _$IPAccessControlListRequestFromJson(
        Map<String, dynamic> json) =>
    IPAccessControlListRequest(
      ipAccessControlList: json['ipAccessControlList'] == null
          ? null
          : IPAccessControlList.fromJson(
              json['ipAccessControlList'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IPAccessControlListRequestToJson(
    IPAccessControlListRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ipAccessControlList', instance.ipAccessControlList);
  return val;
}

IPAccessControlListResponse _$IPAccessControlListResponseFromJson(
        Map<String, dynamic> json) =>
    IPAccessControlListResponse(
      ipAccessControlList: json['ipAccessControlList'] == null
          ? null
          : IPAccessControlList.fromJson(
              json['ipAccessControlList'] as Map<String, dynamic>),
      ipAccessControlLists: (json['ipAccessControlLists'] as List<dynamic>?)
          ?.map((e) => IPAccessControlList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IPAccessControlListResponseToJson(
    IPAccessControlListResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ipAccessControlList', instance.ipAccessControlList);
  writeNotNull('ipAccessControlLists', instance.ipAccessControlLists);
  return val;
}

IPAccessControlListSearchCriteria _$IPAccessControlListSearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    IPAccessControlListSearchCriteria(
      name: json['name'] as String?,
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$IPAccessControlListSearchCriteriaToJson(
    IPAccessControlListSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('name', instance.name);
  return val;
}

IPAccessControlListSearchRequest _$IPAccessControlListSearchRequestFromJson(
        Map<String, dynamic> json) =>
    IPAccessControlListSearchRequest(
      search: json['search'] == null
          ? null
          : IPAccessControlListSearchCriteria.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IPAccessControlListSearchRequestToJson(
    IPAccessControlListSearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  return val;
}

IPAccessControlListSearchResponse _$IPAccessControlListSearchResponseFromJson(
        Map<String, dynamic> json) =>
    IPAccessControlListSearchResponse(
      ipAccessControlLists: (json['ipAccessControlLists'] as List<dynamic>?)
          ?.map((e) => IPAccessControlList.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$IPAccessControlListSearchResponseToJson(
    IPAccessControlListSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ipAccessControlLists', instance.ipAccessControlLists);
  writeNotNull('total', instance.total);
  return val;
}

IssueResponse _$IssueResponseFromJson(Map<String, dynamic> json) =>
    IssueResponse(
      refreshToken: json['refreshToken'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$IssueResponseToJson(IssueResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refreshToken', instance.refreshToken);
  writeNotNull('token', instance.token);
  return val;
}

JSONWebKey _$JSONWebKeyFromJson(Map<String, dynamic> json) => JSONWebKey(
      alg: _$enumDecodeNullable(_$AlgorithmEnumMap, json['alg']),
      crv: json['crv'] as String?,
      d: json['d'] as String?,
      dp: json['dp'] as String?,
      dq: json['dq'] as String?,
      e: json['e'] as String?,
      kid: json['kid'] as String?,
      kty: _$enumDecodeNullable(_$KeyTypeEnumMap, json['kty']),
      n: json['n'] as String?,
      p: json['p'] as String?,
      q: json['q'] as String?,
      qi: json['qi'] as String?,
      use: json['use'] as String?,
      x: json['x'] as String?,
      x5c: (json['x5c'] as List<dynamic>?)?.map((e) => e as String).toList(),
      x5t: json['x5t'] as String?,
      x5t_S256: json['x5t#S256'] as String?,
      y: json['y'] as String?,
    );

Map<String, dynamic> _$JSONWebKeyToJson(JSONWebKey instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alg', _$AlgorithmEnumMap[instance.alg]);
  writeNotNull('crv', instance.crv);
  writeNotNull('d', instance.d);
  writeNotNull('dp', instance.dp);
  writeNotNull('dq', instance.dq);
  writeNotNull('e', instance.e);
  writeNotNull('kid', instance.kid);
  writeNotNull('kty', _$KeyTypeEnumMap[instance.kty]);
  writeNotNull('n', instance.n);
  writeNotNull('p', instance.p);
  writeNotNull('q', instance.q);
  writeNotNull('qi', instance.qi);
  writeNotNull('use', instance.use);
  writeNotNull('x', instance.x);
  writeNotNull('x5c', instance.x5c);
  writeNotNull('x5t', instance.x5t);
  writeNotNull('x5t#S256', instance.x5t_S256);
  writeNotNull('y', instance.y);
  return val;
}

const _$AlgorithmEnumMap = {
  Algorithm.ES256: 'ES256',
  Algorithm.ES384: 'ES384',
  Algorithm.ES512: 'ES512',
  Algorithm.HS256: 'HS256',
  Algorithm.HS384: 'HS384',
  Algorithm.HS512: 'HS512',
  Algorithm.PS256: 'PS256',
  Algorithm.PS384: 'PS384',
  Algorithm.PS512: 'PS512',
  Algorithm.RS256: 'RS256',
  Algorithm.RS384: 'RS384',
  Algorithm.RS512: 'RS512',
  Algorithm.none: 'none',
};

const _$KeyTypeEnumMap = {
  KeyType.EC: 'EC',
  KeyType.RSA: 'RSA',
  KeyType.HMAC: 'HMAC',
};

JSONWebKeyInfoProvider _$JSONWebKeyInfoProviderFromJson(
        Map<String, dynamic> json) =>
    JSONWebKeyInfoProvider();

Map<String, dynamic> _$JSONWebKeyInfoProviderToJson(
        JSONWebKeyInfoProvider instance) =>
    <String, dynamic>{};

JWKSResponse _$JWKSResponseFromJson(Map<String, dynamic> json) => JWKSResponse(
      keys: (json['keys'] as List<dynamic>)
          .map((e) => JSONWebKey.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$JWKSResponseToJson(JWKSResponse instance) =>
    <String, dynamic>{
      'keys': instance.keys,
    };

JWT _$JWTFromJson(Map<String, dynamic> json) => JWT(
      aud: json['aud'],
      exp: json['exp'] as num?,
      iat: json['iat'] as num?,
      iss: json['iss'] as String?,
      jti: json['jti'] as String?,
      nbf: json['nbf'] as num?,
      sub: json['sub'] as String?,
    );

Map<String, dynamic> _$JWTToJson(JWT instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('aud', instance.aud);
  writeNotNull('exp', instance.exp);
  writeNotNull('iat', instance.iat);
  writeNotNull('iss', instance.iss);
  writeNotNull('jti', instance.jti);
  writeNotNull('nbf', instance.nbf);
  writeNotNull('sub', instance.sub);
  return val;
}

JWTConfiguration _$JWTConfigurationFromJson(Map<String, dynamic> json) =>
    JWTConfiguration(
      accessTokenKeyId: json['accessTokenKeyId'] as String?,
      idTokenKeyId: json['idTokenKeyId'] as String?,
      refreshTokenExpirationPolicy: _$enumDecodeNullable(
          _$RefreshTokenExpirationPolicyEnumMap,
          json['refreshTokenExpirationPolicy']),
      refreshTokenRevocationPolicy: json['refreshTokenRevocationPolicy'] == null
          ? null
          : RefreshTokenRevocationPolicy.fromJson(
              json['refreshTokenRevocationPolicy'] as Map<String, dynamic>),
      refreshTokenTimeToLiveInMinutes:
          json['refreshTokenTimeToLiveInMinutes'] as num?,
      refreshTokenUsagePolicy: _$enumDecodeNullable(
          _$RefreshTokenUsagePolicyEnumMap, json['refreshTokenUsagePolicy']),
      timeToLiveInSeconds: json['timeToLiveInSeconds'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$JWTConfigurationToJson(JWTConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('accessTokenKeyId', instance.accessTokenKeyId);
  writeNotNull('idTokenKeyId', instance.idTokenKeyId);
  writeNotNull(
      'refreshTokenExpirationPolicy',
      _$RefreshTokenExpirationPolicyEnumMap[
          instance.refreshTokenExpirationPolicy]);
  writeNotNull(
      'refreshTokenRevocationPolicy', instance.refreshTokenRevocationPolicy);
  writeNotNull('refreshTokenTimeToLiveInMinutes',
      instance.refreshTokenTimeToLiveInMinutes);
  writeNotNull('refreshTokenUsagePolicy',
      _$RefreshTokenUsagePolicyEnumMap[instance.refreshTokenUsagePolicy]);
  writeNotNull('timeToLiveInSeconds', instance.timeToLiveInSeconds);
  return val;
}

const _$RefreshTokenExpirationPolicyEnumMap = {
  RefreshTokenExpirationPolicy.Fixed: 'Fixed',
  RefreshTokenExpirationPolicy.SlidingWindow: 'SlidingWindow',
};

const _$RefreshTokenUsagePolicyEnumMap = {
  RefreshTokenUsagePolicy.Reusable: 'Reusable',
  RefreshTokenUsagePolicy.OneTimeUse: 'OneTimeUse',
};

JWTPublicKeyUpdateEvent _$JWTPublicKeyUpdateEventFromJson(
        Map<String, dynamic> json) =>
    JWTPublicKeyUpdateEvent(
      applicationIds: (json['applicationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$JWTPublicKeyUpdateEventToJson(
    JWTPublicKeyUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationIds', instance.applicationIds?.toList());
  return val;
}

JWTRefreshEvent _$JWTRefreshEventFromJson(Map<String, dynamic> json) =>
    JWTRefreshEvent(
      applicationId: json['applicationId'] as String?,
      original: json['original'] as String?,
      refreshToken: json['refreshToken'] as String?,
      token: json['token'] as String?,
      userId: json['userId'] as String?,
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$JWTRefreshEventToJson(JWTRefreshEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('original', instance.original);
  writeNotNull('refreshToken', instance.refreshToken);
  writeNotNull('token', instance.token);
  writeNotNull('userId', instance.userId);
  return val;
}

JWTRefreshResponse _$JWTRefreshResponseFromJson(Map<String, dynamic> json) =>
    JWTRefreshResponse(
      refreshToken: json['refreshToken'] as String,
      refreshTokenId: json['refreshTokenId'],
      token: json['token'] as String,
    );

Map<String, dynamic> _$JWTRefreshResponseToJson(JWTRefreshResponse instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'refreshTokenId': instance.refreshTokenId,
      'token': instance.token,
    };

JWTRefreshTokenRevokeEvent _$JWTRefreshTokenRevokeEventFromJson(
        Map<String, dynamic> json) =>
    JWTRefreshTokenRevokeEvent(
      applicationId: json['applicationId'] as String,
      applicationTimeToLiveInSeconds:
          Map<String, num>.from(json['applicationTimeToLiveInSeconds'] as Map),
      refreshToken:
          RefreshToken.fromJson(json['refreshToken'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String,
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$JWTRefreshTokenRevokeEventToJson(
    JWTRefreshTokenRevokeEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  val['applicationId'] = instance.applicationId;
  val['applicationTimeToLiveInSeconds'] =
      instance.applicationTimeToLiveInSeconds;
  val['refreshToken'] = instance.refreshToken;
  val['user'] = instance.user;
  val['userId'] = instance.userId;
  return val;
}

JWTVendRequest _$JWTVendRequestFromJson(Map<String, dynamic> json) =>
    JWTVendRequest(
      claims: json['claims'] as Map<String, dynamic>,
      keyId: json['keyId'] as String,
      timeToLiveInSeconds: json['timeToLiveInSeconds'] as num,
    );

Map<String, dynamic> _$JWTVendRequestToJson(JWTVendRequest instance) =>
    <String, dynamic>{
      'claims': instance.claims,
      'keyId': instance.keyId,
      'timeToLiveInSeconds': instance.timeToLiveInSeconds,
    };

JWTVendResponse _$JWTVendResponseFromJson(Map<String, dynamic> json) =>
    JWTVendResponse(
      token: json['token'] as String,
    );

Map<String, dynamic> _$JWTVendResponseToJson(JWTVendResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

KafkaConfiguration _$KafkaConfigurationFromJson(Map<String, dynamic> json) =>
    KafkaConfiguration(
      defaultTopic: json['defaultTopic'] as String,
      producer: Map<String, String>.from(json['producer'] as Map),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$KafkaConfigurationToJson(KafkaConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  val['defaultTopic'] = instance.defaultTopic;
  val['producer'] = instance.producer;
  return val;
}

KafkaMessengerConfiguration _$KafkaMessengerConfigurationFromJson(
        Map<String, dynamic> json) =>
    KafkaMessengerConfiguration(
      defaultTopic: json['defaultTopic'] as String,
      producer: Map<String, String>.from(json['producer'] as Map),
    )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool? ?? false
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..name = json['name'] as String?
      ..transport = json['transport'] as String?
      ..type = _$enumDecodeNullable(_$MessengerTypeEnumMap, json['type']);

Map<String, dynamic> _$KafkaMessengerConfigurationToJson(
    KafkaMessengerConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('transport', instance.transport);
  writeNotNull('type', _$MessengerTypeEnumMap[instance.type]);
  val['defaultTopic'] = instance.defaultTopic;
  val['producer'] = instance.producer;
  return val;
}

Key _$KeyFromJson(Map<String, dynamic> json) => Key(
      algorithm: _$enumDecode(_$KeyAlgorithmEnumMap, json['algorithm']),
      certificate: json['certificate'] as String,
      certificateInformation: CertificateInformation.fromJson(
          json['certificateInformation'] as Map<String, dynamic>),
      expirationInstant: json['expirationInstant'] as num,
      hasPrivateKey: json['hasPrivateKey'] as bool,
      id: json['id'] as String,
      insertInstant: json['insertInstant'] as num,
      issuer: json['issuer'] as String,
      kid: json['kid'] as String,
      lastUpdateInstant: json['lastUpdateInstant'] as num,
      length: json['length'] as num,
      name: json['name'] as String,
      privateKey: json['privateKey'] as String,
      publicKey: json['publicKey'] as String,
      secret: json['secret'] as String,
      type: _$enumDecode(_$KeyTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$KeyToJson(Key instance) => <String, dynamic>{
      'algorithm': _$KeyAlgorithmEnumMap[instance.algorithm],
      'certificate': instance.certificate,
      'certificateInformation': instance.certificateInformation,
      'expirationInstant': instance.expirationInstant,
      'hasPrivateKey': instance.hasPrivateKey,
      'id': instance.id,
      'insertInstant': instance.insertInstant,
      'issuer': instance.issuer,
      'kid': instance.kid,
      'lastUpdateInstant': instance.lastUpdateInstant,
      'length': instance.length,
      'name': instance.name,
      'privateKey': instance.privateKey,
      'publicKey': instance.publicKey,
      'secret': instance.secret,
      'type': _$KeyTypeEnumMap[instance.type],
    };

const _$KeyAlgorithmEnumMap = {
  KeyAlgorithm.ES256: 'ES256',
  KeyAlgorithm.ES384: 'ES384',
  KeyAlgorithm.ES512: 'ES512',
  KeyAlgorithm.HS256: 'HS256',
  KeyAlgorithm.HS384: 'HS384',
  KeyAlgorithm.HS512: 'HS512',
  KeyAlgorithm.RS256: 'RS256',
  KeyAlgorithm.RS384: 'RS384',
  KeyAlgorithm.RS512: 'RS512',
};

KeyRequest _$KeyRequestFromJson(Map<String, dynamic> json) => KeyRequest(
      key: Key.fromJson(json['key'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KeyRequestToJson(KeyRequest instance) =>
    <String, dynamic>{
      'key': instance.key,
    };

KeyResponse _$KeyResponseFromJson(Map<String, dynamic> json) => KeyResponse(
      key: Key.fromJson(json['key'] as Map<String, dynamic>),
      keys: (json['keys'] as List<dynamic>)
          .map((e) => Key.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$KeyResponseToJson(KeyResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'keys': instance.keys,
    };

KickstartSuccessEvent _$KickstartSuccessEventFromJson(
        Map<String, dynamic> json) =>
    KickstartSuccessEvent(
      instanceId: json['instanceId'] as String,
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$KickstartSuccessEventToJson(
    KickstartSuccessEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  val['instanceId'] = instance.instanceId;
  return val;
}

Lambda _$LambdaFromJson(Map<String, dynamic> json) => Lambda(
      body: json['body'] as String,
      debug: json['debug'] as bool,
      engineType: _$enumDecode(_$LambdaEngineTypeEnumMap, json['engineType']),
      id: json['id'] as String,
      insertInstant: json['insertInstant'] as num,
      lastUpdateInstant: json['lastUpdateInstant'] as num,
      name: json['name'] as String,
      type: _$enumDecode(_$LambdaTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$LambdaToJson(Lambda instance) => <String, dynamic>{
      'body': instance.body,
      'debug': instance.debug,
      'engineType': _$LambdaEngineTypeEnumMap[instance.engineType],
      'id': instance.id,
      'insertInstant': instance.insertInstant,
      'lastUpdateInstant': instance.lastUpdateInstant,
      'name': instance.name,
      'type': _$LambdaTypeEnumMap[instance.type],
    };

const _$LambdaEngineTypeEnumMap = {
  LambdaEngineType.GraalJS: 'GraalJS',
  LambdaEngineType.Nashorn: 'Nashorn',
};

const _$LambdaTypeEnumMap = {
  LambdaType.JWTPopulate: 'JWTPopulate',
  LambdaType.OpenIDReconcile: 'OpenIDReconcile',
  LambdaType.SAMLv2Reconcile: 'SAMLv2Reconcile',
  LambdaType.SAMLv2Populate: 'SAMLv2Populate',
  LambdaType.AppleReconcile: 'AppleReconcile',
  LambdaType.ExternalJWTReconcile: 'ExternalJWTReconcile',
  LambdaType.FacebookReconcile: 'FacebookReconcile',
  LambdaType.GoogleReconcile: 'GoogleReconcile',
  LambdaType.HYPRReconcile: 'HYPRReconcile',
  LambdaType.TwitterReconcile: 'TwitterReconcile',
  LambdaType.LDAPConnectorReconcile: 'LDAPConnectorReconcile',
  LambdaType.LinkedInReconcile: 'LinkedInReconcile',
  LambdaType.EpicGamesReconcile: 'EpicGamesReconcile',
  LambdaType.NintendoReconcile: 'NintendoReconcile',
  LambdaType.SonyPSNReconcile: 'SonyPSNReconcile',
  LambdaType.SteamReconcile: 'SteamReconcile',
  LambdaType.TwitchReconcile: 'TwitchReconcile',
  LambdaType.XboxReconcile: 'XboxReconcile',
  LambdaType.ClientCredentialsJWTPopulate: 'ClientCredentialsJWTPopulate',
  LambdaType.SCIMServerGroupRequestConverter: 'SCIMServerGroupRequestConverter',
  LambdaType.SCIMServerGroupResponseConverter:
      'SCIMServerGroupResponseConverter',
  LambdaType.SCIMServerUserRequestConverter: 'SCIMServerUserRequestConverter',
  LambdaType.SCIMServerUserResponseConverter: 'SCIMServerUserResponseConverter',
};

LambdaRequest _$LambdaRequestFromJson(Map<String, dynamic> json) =>
    LambdaRequest(
      lambda: Lambda.fromJson(json['lambda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LambdaRequestToJson(LambdaRequest instance) =>
    <String, dynamic>{
      'lambda': instance.lambda,
    };

LambdaResponse _$LambdaResponseFromJson(Map<String, dynamic> json) =>
    LambdaResponse(
      lambda: Lambda.fromJson(json['lambda'] as Map<String, dynamic>),
      lambdas: (json['lambdas'] as List<dynamic>)
          .map((e) => Lambda.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LambdaResponseToJson(LambdaResponse instance) =>
    <String, dynamic>{
      'lambda': instance.lambda,
      'lambdas': instance.lambdas,
    };

LDAPConnectorConfiguration _$LDAPConnectorConfigurationFromJson(
        Map<String, dynamic> json) =>
    LDAPConnectorConfiguration(
      authenticationURL: json['authenticationURL'] as String,
      baseStructure: json['baseStructure'] as String,
      connectTimeout: json['connectTimeout'] as num,
      identifyingAttribute: json['identifyingAttribute'] as String,
      lambdaConfiguration: json['lambdaConfiguration'],
      loginIdAttribute: json['loginIdAttribute'] as String,
      readTimeout: json['readTimeout'] as num,
      requestedAttributes: (json['requestedAttributes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      securityMethod:
          _$enumDecode(_$LDAPSecurityMethodEnumMap, json['securityMethod']),
      systemAccountDN: json['systemAccountDN'] as String,
      systemAccountPassword: json['systemAccountPassword'] as String,
    )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool? ?? false
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..name = json['name'] as String?
      ..type = _$enumDecodeNullable(_$ConnectorTypeEnumMap, json['type']);

Map<String, dynamic> _$LDAPConnectorConfigurationToJson(
    LDAPConnectorConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('debug', instance.debug);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$ConnectorTypeEnumMap[instance.type]);
  val['authenticationURL'] = instance.authenticationURL;
  val['baseStructure'] = instance.baseStructure;
  val['connectTimeout'] = instance.connectTimeout;
  val['identifyingAttribute'] = instance.identifyingAttribute;
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  val['loginIdAttribute'] = instance.loginIdAttribute;
  val['readTimeout'] = instance.readTimeout;
  val['requestedAttributes'] = instance.requestedAttributes;
  val['securityMethod'] = _$LDAPSecurityMethodEnumMap[instance.securityMethod];
  val['systemAccountDN'] = instance.systemAccountDN;
  val['systemAccountPassword'] = instance.systemAccountPassword;
  return val;
}

const _$LDAPSecurityMethodEnumMap = {
  LDAPSecurityMethod.None: 'None',
  LDAPSecurityMethod.LDAPS: 'LDAPS',
  LDAPSecurityMethod.StartTLS: 'StartTLS',
};

LinkedInApplicationConfiguration _$LinkedInApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    LinkedInApplicationConfiguration(
      buttonText: json['buttonText'] as String,
      client_id: json['client_id'] as String,
      client_secret: json['client_secret'] as String,
      scope: json['scope'] as String,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$LinkedInApplicationConfigurationToJson(
    LinkedInApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  val['buttonText'] = instance.buttonText;
  val['client_id'] = instance.client_id;
  val['client_secret'] = instance.client_secret;
  val['scope'] = instance.scope;
  return val;
}

LinkedInIdentityProvider _$LinkedInIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    LinkedInIdentityProvider(
      buttonText: json['buttonText'] as String,
      client_id: json['client_id'] as String,
      client_secret: json['client_secret'] as String,
      scope: json['scope'] as String,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            LinkedInApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$LinkedInIdentityProviderToJson(
    LinkedInIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  val['buttonText'] = instance.buttonText;
  val['client_id'] = instance.client_id;
  val['client_secret'] = instance.client_secret;
  val['scope'] = instance.scope;
  return val;
}

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      city: json['city'] as String?,
      country: json['country'] as String?,
      displayString: json['displayString'] as String?,
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
      region: json['region'] as String?,
      zipcode: json['zipcode'] as String?,
    );

Map<String, dynamic> _$LocationToJson(Location instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('city', instance.city);
  writeNotNull('country', instance.country);
  writeNotNull('displayString', instance.displayString);
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('region', instance.region);
  writeNotNull('zipcode', instance.zipcode);
  return val;
}

LogHistory _$LogHistoryFromJson(Map<String, dynamic> json) => LogHistory(
      historyItems: (json['historyItems'] as List<dynamic>?)
          ?.map((e) => HistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LogHistoryToJson(LogHistory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('historyItems', instance.historyItems);
  return val;
}

LoginConfiguration _$LoginConfigurationFromJson(Map<String, dynamic> json) =>
    LoginConfiguration(
      allowTokenRefresh: json['allowTokenRefresh'] as bool?,
      generateRefreshTokens: json['generateRefreshTokens'] as bool?,
      requireAuthentication: json['requireAuthentication'] as bool?,
    );

Map<String, dynamic> _$LoginConfigurationToJson(LoginConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allowTokenRefresh', instance.allowTokenRefresh);
  writeNotNull('generateRefreshTokens', instance.generateRefreshTokens);
  writeNotNull('requireAuthentication', instance.requireAuthentication);
  return val;
}

LoginHintConfiguration _$LoginHintConfigurationFromJson(
        Map<String, dynamic> json) =>
    LoginHintConfiguration(
      parameterName: json['parameterName'] as String?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$LoginHintConfigurationToJson(
    LoginHintConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('parameterName', instance.parameterName);
  return val;
}

LoginPingRequest _$LoginPingRequestFromJson(Map<String, dynamic> json) =>
    LoginPingRequest(
      userId: json['userId'] as String?,
    )
      ..eventInfo = json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>)
      ..applicationId = json['applicationId'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..metaData = json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>)
      ..newDevice = json['newDevice'] as bool?
      ..noJWT = json['noJWT'] as bool?;

Map<String, dynamic> _$LoginPingRequestToJson(LoginPingRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('newDevice', instance.newDevice);
  writeNotNull('noJWT', instance.noJWT);
  writeNotNull('userId', instance.userId);
  return val;
}

LoginPreventedResponse _$LoginPreventedResponseFromJson(
        Map<String, dynamic> json) =>
    LoginPreventedResponse(
      actionerUserId: json['actionerUserId'] as String?,
      actionId: json['actionId'] as String?,
      expiry: json['expiry'] as num?,
      localizedName: json['localizedName'] as String?,
      localizedOption: json['localizedOption'] as String?,
      localizedReason: json['localizedReason'] as String?,
      name: json['name'] as String?,
      option: json['option'] as String?,
      reason: json['reason'] as String?,
      reasonCode: json['reasonCode'] as String?,
    );

Map<String, dynamic> _$LoginPreventedResponseToJson(
    LoginPreventedResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('actionerUserId', instance.actionerUserId);
  writeNotNull('actionId', instance.actionId);
  writeNotNull('expiry', instance.expiry);
  writeNotNull('localizedName', instance.localizedName);
  writeNotNull('localizedOption', instance.localizedOption);
  writeNotNull('localizedReason', instance.localizedReason);
  writeNotNull('name', instance.name);
  writeNotNull('option', instance.option);
  writeNotNull('reason', instance.reason);
  writeNotNull('reasonCode', instance.reasonCode);
  return val;
}

LoginRecordConfiguration _$LoginRecordConfigurationFromJson(
        Map<String, dynamic> json) =>
    LoginRecordConfiguration(
      delete: json['delete'] == null
          ? null
          : DeleteConfiguration.fromJson(
              json['delete'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginRecordConfigurationToJson(
    LoginRecordConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('delete', instance.delete);
  return val;
}

LoginRecordExportRequest _$LoginRecordExportRequestFromJson(
        Map<String, dynamic> json) =>
    LoginRecordExportRequest(
      criteria: json['criteria'] == null
          ? null
          : LoginRecordSearchCriteria.fromJson(
              json['criteria'] as Map<String, dynamic>),
    )
      ..dateTimeSecondsFormat = json['dateTimeSecondsFormat'] as String?
      ..zoneId = json['zoneId'] as String?;

Map<String, dynamic> _$LoginRecordExportRequestToJson(
    LoginRecordExportRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dateTimeSecondsFormat', instance.dateTimeSecondsFormat);
  writeNotNull('zoneId', instance.zoneId);
  writeNotNull('criteria', instance.criteria);
  return val;
}

LoginRecordSearchCriteria _$LoginRecordSearchCriteriaFromJson(
        Map<String, dynamic> json) =>
    LoginRecordSearchCriteria(
      applicationId: json['applicationId'] as String?,
      end: json['end'] as num?,
      start: json['start'] as num?,
      userId: json['userId'] as String?,
    )
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?;

Map<String, dynamic> _$LoginRecordSearchCriteriaToJson(
    LoginRecordSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('end', instance.end);
  writeNotNull('start', instance.start);
  writeNotNull('userId', instance.userId);
  return val;
}

LoginRecordSearchRequest _$LoginRecordSearchRequestFromJson(
        Map<String, dynamic> json) =>
    LoginRecordSearchRequest(
      retrieveTotal: json['retrieveTotal'] as bool?,
      search: json['search'] == null
          ? null
          : LoginRecordSearchCriteria.fromJson(
              json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginRecordSearchRequestToJson(
    LoginRecordSearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('retrieveTotal', instance.retrieveTotal);
  writeNotNull('search', instance.search);
  return val;
}

LoginRecordSearchResponse _$LoginRecordSearchResponseFromJson(
        Map<String, dynamic> json) =>
    LoginRecordSearchResponse(
      logins: (json['logins'] as List<dynamic>?)
          ?.map((e) => DisplayableRawLogin.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$LoginRecordSearchResponseToJson(
    LoginRecordSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('logins', instance.logins);
  writeNotNull('total', instance.total);
  return val;
}

LoginReportResponse _$LoginReportResponseFromJson(Map<String, dynamic> json) =>
    LoginReportResponse(
      hourlyCounts: (json['hourlyCounts'] as List<dynamic>?)
          ?.map((e) => Count.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$LoginReportResponseToJson(LoginReportResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hourlyCounts', instance.hourlyCounts);
  writeNotNull('total', instance.total);
  return val;
}

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
      loginId: json['loginId'] as String?,
      oneTimePassword: json['oneTimePassword'] as String?,
      password: json['password'] as String?,
      twoFactorTrustId: json['twoFactorTrustId'] as String?,
    )
      ..eventInfo = json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>)
      ..applicationId = json['applicationId'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..metaData = json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>)
      ..newDevice = json['newDevice'] as bool?
      ..noJWT = json['noJWT'] as bool?;

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('newDevice', instance.newDevice);
  writeNotNull('noJWT', instance.noJWT);
  writeNotNull('loginId', instance.loginId);
  writeNotNull('oneTimePassword', instance.oneTimePassword);
  writeNotNull('password', instance.password);
  writeNotNull('twoFactorTrustId', instance.twoFactorTrustId);
  return val;
}

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      actions: (json['actions'] as List<dynamic>?)
          ?.map(
              (e) => LoginPreventedResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      changePasswordId: json['changePasswordId'] as String?,
      changePasswordReason: _$enumDecodeNullable(
          _$ChangePasswordReasonEnumMap, json['changePasswordReason']),
      configurableMethods: (json['configurableMethods'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      emailVerificationId: json['emailVerificationId'] as String?,
      methods: (json['methods'] as List<dynamic>?)
          ?.map((e) => TwoFactorMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      pendingIdPLinkId: json['pendingIdPLinkId'] as String?,
      refreshToken: json['refreshToken'] as String?,
      refreshTokenId: json['refreshTokenId'] as String?,
      registrationVerificationId: json['registrationVerificationId'] as String?,
      state: json['state'] as Map<String, dynamic>?,
      threatsDetected: (json['threatsDetected'] as List<dynamic>?)
          ?.map((e) => _$enumDecode(_$AuthenticationThreatsEnumMap, e))
          .toSet(),
      token: json['token'] as String?,
      tokenExpirationInstant: json['tokenExpirationInstant'] as num?,
      trustToken: json['trustToken'] as String?,
      twoFactorId: json['twoFactorId'] as String?,
      twoFactorTrustId: json['twoFactorTrustId'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('actions', instance.actions);
  writeNotNull('changePasswordId', instance.changePasswordId);
  writeNotNull('changePasswordReason',
      _$ChangePasswordReasonEnumMap[instance.changePasswordReason]);
  writeNotNull('configurableMethods', instance.configurableMethods);
  writeNotNull('emailVerificationId', instance.emailVerificationId);
  writeNotNull('methods', instance.methods);
  writeNotNull('pendingIdPLinkId', instance.pendingIdPLinkId);
  writeNotNull('refreshToken', instance.refreshToken);
  writeNotNull('refreshTokenId', instance.refreshTokenId);
  writeNotNull(
      'registrationVerificationId', instance.registrationVerificationId);
  writeNotNull('state', instance.state);
  writeNotNull(
      'threatsDetected',
      instance.threatsDetected
          ?.map((e) => _$AuthenticationThreatsEnumMap[e])
          .toList());
  writeNotNull('token', instance.token);
  writeNotNull('tokenExpirationInstant', instance.tokenExpirationInstant);
  writeNotNull('trustToken', instance.trustToken);
  writeNotNull('twoFactorId', instance.twoFactorId);
  writeNotNull('twoFactorTrustId', instance.twoFactorTrustId);
  writeNotNull('user', instance.user);
  return val;
}

const _$ChangePasswordReasonEnumMap = {
  ChangePasswordReason.Administrative: 'Administrative',
  ChangePasswordReason.Breached: 'Breached',
  ChangePasswordReason.Expired: 'Expired',
  ChangePasswordReason.Validation: 'Validation',
};

const _$AuthenticationThreatsEnumMap = {
  AuthenticationThreats.ImpossibleTravel: 'ImpossibleTravel',
};

LogoutRequest _$LogoutRequestFromJson(Map<String, dynamic> json) =>
    LogoutRequest(
      global: json['global'] as bool?,
      refreshToken: json['refreshToken'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$LogoutRequestToJson(LogoutRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('global', instance.global);
  writeNotNull('refreshToken', instance.refreshToken);
  return val;
}

LookupResponse _$LookupResponseFromJson(Map<String, dynamic> json) =>
    LookupResponse(
      identityProvider: json['identityProvider'] == null
          ? null
          : IdentityProviderDetails.fromJson(
              json['identityProvider'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LookupResponseToJson(LookupResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identityProvider', instance.identityProvider);
  return val;
}

ManagedFields _$ManagedFieldsFromJson(Map<String, dynamic> json) =>
    ManagedFields();

Map<String, dynamic> _$ManagedFieldsToJson(ManagedFields instance) =>
    <String, dynamic>{};

MaximumPasswordAge _$MaximumPasswordAgeFromJson(Map<String, dynamic> json) =>
    MaximumPasswordAge(
      days: json['days'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$MaximumPasswordAgeToJson(MaximumPasswordAge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('days', instance.days);
  return val;
}

MemberDeleteRequest _$MemberDeleteRequestFromJson(Map<String, dynamic> json) =>
    MemberDeleteRequest(
      memberIds: (json['memberIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      members: (json['members'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
    );

Map<String, dynamic> _$MemberDeleteRequestToJson(MemberDeleteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('memberIds', instance.memberIds);
  writeNotNull('members', instance.members);
  return val;
}

MemberRequest _$MemberRequestFromJson(Map<String, dynamic> json) =>
    MemberRequest(
      members: (json['members'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$MemberRequestToJson(MemberRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('members', instance.members);
  return val;
}

MemberResponse _$MemberResponseFromJson(Map<String, dynamic> json) =>
    MemberResponse(
      members: (json['members'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$MemberResponseToJson(MemberResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('members', instance.members);
  return val;
}

Message _$MessageFromJson(Map<String, dynamic> json) => Message();

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{};

MessageTemplate _$MessageTemplateFromJson(Map<String, dynamic> json) =>
    MessageTemplate(
      data: json['data'] as Map<String, dynamic>?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      name: json['name'] as String?,
      type: _$enumDecodeNullable(_$MessageTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$MessageTemplateToJson(MessageTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$MessageTypeEnumMap[instance.type]);
  return val;
}

const _$MessageTypeEnumMap = {
  MessageType.SMS: 'SMS',
};

MessageTemplateRequest _$MessageTemplateRequestFromJson(
        Map<String, dynamic> json) =>
    MessageTemplateRequest(
      messageTemplate: json['messageTemplate'] == null
          ? null
          : MessageTemplate.fromJson(
              json['messageTemplate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessageTemplateRequestToJson(
    MessageTemplateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('messageTemplate', instance.messageTemplate);
  return val;
}

MessageTemplateResponse _$MessageTemplateResponseFromJson(
        Map<String, dynamic> json) =>
    MessageTemplateResponse(
      messageTemplate: json['messageTemplate'] == null
          ? null
          : MessageTemplate.fromJson(
              json['messageTemplate'] as Map<String, dynamic>),
      messageTemplates: (json['messageTemplates'] as List<dynamic>?)
          ?.map((e) => MessageTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessageTemplateResponseToJson(
    MessageTemplateResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('messageTemplate', instance.messageTemplate);
  writeNotNull('messageTemplates', instance.messageTemplates);
  return val;
}

MessengerRequest _$MessengerRequestFromJson(Map<String, dynamic> json) =>
    MessengerRequest(
      messenger: json['messenger'] == null
          ? null
          : BaseMessengerConfiguration.fromJson(
              json['messenger'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MessengerRequestToJson(MessengerRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('messenger', instance.messenger);
  return val;
}

MessengerResponse _$MessengerResponseFromJson(Map<String, dynamic> json) =>
    MessengerResponse(
      messenger: json['messenger'] == null
          ? null
          : BaseMessengerConfiguration.fromJson(
              json['messenger'] as Map<String, dynamic>),
      messengers: (json['messengers'] as List<dynamic>?)
          ?.map((e) =>
              BaseMessengerConfiguration.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessengerResponseToJson(MessengerResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('messenger', instance.messenger);
  writeNotNull('messengers', instance.messengers);
  return val;
}

MessengerTransport _$MessengerTransportFromJson(Map<String, dynamic> json) =>
    MessengerTransport();

Map<String, dynamic> _$MessengerTransportToJson(MessengerTransport instance) =>
    <String, dynamic>{};

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      data: json['data'] as Map<String, dynamic>?,
      device: json['device'] == null
          ? null
          : DeviceInfo.fromJson(json['device'] as Map<String, dynamic>),
      scopes:
          (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toSet(),
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('device', instance.device);
  writeNotNull('scopes', instance.scopes?.toList());
  return val;
}

MinimumPasswordAge _$MinimumPasswordAgeFromJson(Map<String, dynamic> json) =>
    MinimumPasswordAge(
      seconds: json['seconds'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$MinimumPasswordAgeToJson(MinimumPasswordAge instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('seconds', instance.seconds);
  return val;
}

MonthlyActiveUserReportResponse _$MonthlyActiveUserReportResponseFromJson(
        Map<String, dynamic> json) =>
    MonthlyActiveUserReportResponse(
      monthlyActiveUsers: (json['monthlyActiveUsers'] as List<dynamic>?)
          ?.map((e) => Count.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$MonthlyActiveUserReportResponseToJson(
    MonthlyActiveUserReportResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('monthlyActiveUsers', instance.monthlyActiveUsers);
  writeNotNull('total', instance.total);
  return val;
}

MultiFactorAuthenticatorMethod _$MultiFactorAuthenticatorMethodFromJson(
        Map<String, dynamic> json) =>
    MultiFactorAuthenticatorMethod(
      algorithm:
          _$enumDecodeNullable(_$TOTPAlgorithmEnumMap, json['algorithm']),
      codeLength: json['codeLength'] as num?,
      timeStep: json['timeStep'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$MultiFactorAuthenticatorMethodToJson(
    MultiFactorAuthenticatorMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('algorithm', _$TOTPAlgorithmEnumMap[instance.algorithm]);
  writeNotNull('codeLength', instance.codeLength);
  writeNotNull('timeStep', instance.timeStep);
  return val;
}

MultiFactorEmailMethod _$MultiFactorEmailMethodFromJson(
        Map<String, dynamic> json) =>
    MultiFactorEmailMethod(
      templateId: json['templateId'] as String?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$MultiFactorEmailMethodToJson(
    MultiFactorEmailMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('templateId', instance.templateId);
  return val;
}

MultiFactorEmailTemplate _$MultiFactorEmailTemplateFromJson(
        Map<String, dynamic> json) =>
    MultiFactorEmailTemplate(
      templateId: json['templateId'] as String?,
    );

Map<String, dynamic> _$MultiFactorEmailTemplateToJson(
    MultiFactorEmailTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('templateId', instance.templateId);
  return val;
}

MultiFactorSMSMethod _$MultiFactorSMSMethodFromJson(
        Map<String, dynamic> json) =>
    MultiFactorSMSMethod(
      messengerId: json['messengerId'] as String?,
      templateId: json['templateId'] as String?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$MultiFactorSMSMethodToJson(
    MultiFactorSMSMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('messengerId', instance.messengerId);
  writeNotNull('templateId', instance.templateId);
  return val;
}

MultiFactorSMSTemplate _$MultiFactorSMSTemplateFromJson(
        Map<String, dynamic> json) =>
    MultiFactorSMSTemplate(
      templateId: json['templateId'] as String?,
    );

Map<String, dynamic> _$MultiFactorSMSTemplateToJson(
    MultiFactorSMSTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('templateId', instance.templateId);
  return val;
}

NintendoApplicationConfiguration _$NintendoApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    NintendoApplicationConfiguration(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      emailClaim: json['emailClaim'] as String?,
      scope: json['scope'] as String?,
      uniqueIdClaim: json['uniqueIdClaim'] as String?,
      usernameClaim: json['usernameClaim'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$NintendoApplicationConfigurationToJson(
    NintendoApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('emailClaim', instance.emailClaim);
  writeNotNull('scope', instance.scope);
  writeNotNull('uniqueIdClaim', instance.uniqueIdClaim);
  writeNotNull('usernameClaim', instance.usernameClaim);
  return val;
}

NintendoIdentityProvider _$NintendoIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    NintendoIdentityProvider(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      emailClaim: json['emailClaim'] as String?,
      scope: json['scope'] as String?,
      uniqueIdClaim: json['uniqueIdClaim'] as String?,
      usernameClaim: json['usernameClaim'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            NintendoApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$NintendoIdentityProviderToJson(
    NintendoIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('emailClaim', instance.emailClaim);
  writeNotNull('scope', instance.scope);
  writeNotNull('uniqueIdClaim', instance.uniqueIdClaim);
  writeNotNull('usernameClaim', instance.usernameClaim);
  return val;
}

NonTransactionalEvent _$NonTransactionalEventFromJson(
        Map<String, dynamic> json) =>
    NonTransactionalEvent();

Map<String, dynamic> _$NonTransactionalEventToJson(
        NonTransactionalEvent instance) =>
    <String, dynamic>{};

OAuth2Configuration _$OAuth2ConfigurationFromJson(Map<String, dynamic> json) =>
    OAuth2Configuration(
      authorizedOriginURLs: (json['authorizedOriginURLs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      authorizedRedirectURLs: (json['authorizedRedirectURLs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      clientAuthenticationPolicy: _$enumDecodeNullable(
          _$ClientAuthenticationPolicyEnumMap,
          json['clientAuthenticationPolicy']),
      clientId: json['clientId'] as String?,
      clientSecret: json['clientSecret'] as String?,
      debug: json['debug'] as bool?,
      deviceVerificationURL: json['deviceVerificationURL'] as String?,
      enabledGrants: (json['enabledGrants'] as List<dynamic>?)
          ?.map((e) => _$enumDecode(_$GrantTypeEnumMap, e))
          .toSet(),
      generateRefreshTokens: json['generateRefreshTokens'] as bool?,
      logoutBehavior:
          _$enumDecodeNullable(_$LogoutBehaviorEnumMap, json['logoutBehavior']),
      logoutURL: json['logoutURL'] as String?,
      proofKeyForCodeExchangePolicy: _$enumDecodeNullable(
          _$ProofKeyForCodeExchangePolicyEnumMap,
          json['proofKeyForCodeExchangePolicy']),
      requireClientAuthentication: json['requireClientAuthentication'] as bool?,
      requireRegistration: json['requireRegistration'] as bool?,
    );

Map<String, dynamic> _$OAuth2ConfigurationToJson(OAuth2Configuration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authorizedOriginURLs', instance.authorizedOriginURLs);
  writeNotNull('authorizedRedirectURLs', instance.authorizedRedirectURLs);
  writeNotNull('clientAuthenticationPolicy',
      _$ClientAuthenticationPolicyEnumMap[instance.clientAuthenticationPolicy]);
  writeNotNull('clientId', instance.clientId);
  writeNotNull('clientSecret', instance.clientSecret);
  writeNotNull('debug', instance.debug);
  writeNotNull('deviceVerificationURL', instance.deviceVerificationURL);
  writeNotNull('enabledGrants',
      instance.enabledGrants?.map((e) => _$GrantTypeEnumMap[e]).toList());
  writeNotNull('generateRefreshTokens', instance.generateRefreshTokens);
  writeNotNull(
      'logoutBehavior', _$LogoutBehaviorEnumMap[instance.logoutBehavior]);
  writeNotNull('logoutURL', instance.logoutURL);
  writeNotNull(
      'proofKeyForCodeExchangePolicy',
      _$ProofKeyForCodeExchangePolicyEnumMap[
          instance.proofKeyForCodeExchangePolicy]);
  writeNotNull(
      'requireClientAuthentication', instance.requireClientAuthentication);
  writeNotNull('requireRegistration', instance.requireRegistration);
  return val;
}

const _$ClientAuthenticationPolicyEnumMap = {
  ClientAuthenticationPolicy.Required: 'Required',
  ClientAuthenticationPolicy.NotRequired: 'NotRequired',
  ClientAuthenticationPolicy.NotRequiredWhenUsingPKCE:
      'NotRequiredWhenUsingPKCE',
};

const _$GrantTypeEnumMap = {
  GrantType.authorization_code: 'authorization_code',
  GrantType.implicit: 'implicit',
  GrantType.password: 'password',
  GrantType.client_credentials: 'client_credentials',
  GrantType.refresh_token: 'refresh_token',
  GrantType.unknown: 'unknown',
  GrantType.device_code: 'device_code',
};

const _$LogoutBehaviorEnumMap = {
  LogoutBehavior.RedirectOnly: 'RedirectOnly',
  LogoutBehavior.AllApplications: 'AllApplications',
};

const _$ProofKeyForCodeExchangePolicyEnumMap = {
  ProofKeyForCodeExchangePolicy.Required: 'Required',
  ProofKeyForCodeExchangePolicy.NotRequired: 'NotRequired',
  ProofKeyForCodeExchangePolicy.NotRequiredWhenUsingClientAuthentication:
      'NotRequiredWhenUsingClientAuthentication',
};

OAuthConfigurationResponse _$OAuthConfigurationResponseFromJson(
        Map<String, dynamic> json) =>
    OAuthConfigurationResponse(
      httpSessionMaxInactiveInterval:
          json['httpSessionMaxInactiveInterval'] as num?,
      logoutURL: json['logoutURL'] as String?,
      oauthConfiguration: json['oauthConfiguration'] == null
          ? null
          : OAuth2Configuration.fromJson(
              json['oauthConfiguration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OAuthConfigurationResponseToJson(
    OAuthConfigurationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('httpSessionMaxInactiveInterval',
      instance.httpSessionMaxInactiveInterval);
  writeNotNull('logoutURL', instance.logoutURL);
  writeNotNull('oauthConfiguration', instance.oauthConfiguration);
  return val;
}

OAuthError _$OAuthErrorFromJson(Map<String, dynamic> json) => OAuthError(
      change_password_id: json['change_password_id'] as String?,
      error: _$enumDecodeNullable(_$OAuthErrorTypeEnumMap, json['error']),
      error_description: json['error_description'] as String?,
      error_reason:
          _$enumDecodeNullable(_$OAuthErrorReasonEnumMap, json['error_reason']),
      error_uri: json['error_uri'] as String?,
      two_factor_id: json['two_factor_id'] as String?,
      two_factor_methods: (json['two_factor_methods'] as List<dynamic>?)
          ?.map((e) => TwoFactorMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OAuthErrorToJson(OAuthError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('change_password_id', instance.change_password_id);
  writeNotNull('error', _$OAuthErrorTypeEnumMap[instance.error]);
  writeNotNull('error_description', instance.error_description);
  writeNotNull(
      'error_reason', _$OAuthErrorReasonEnumMap[instance.error_reason]);
  writeNotNull('error_uri', instance.error_uri);
  writeNotNull('two_factor_id', instance.two_factor_id);
  writeNotNull('two_factor_methods', instance.two_factor_methods);
  return val;
}

const _$OAuthErrorTypeEnumMap = {
  OAuthErrorType.invalid_request: 'invalid_request',
  OAuthErrorType.invalid_client: 'invalid_client',
  OAuthErrorType.invalid_grant: 'invalid_grant',
  OAuthErrorType.invalid_token: 'invalid_token',
  OAuthErrorType.unauthorized_client: 'unauthorized_client',
  OAuthErrorType.invalid_scope: 'invalid_scope',
  OAuthErrorType.server_error: 'server_error',
  OAuthErrorType.unsupported_grant_type: 'unsupported_grant_type',
  OAuthErrorType.unsupported_response_type: 'unsupported_response_type',
  OAuthErrorType.change_password_required: 'change_password_required',
  OAuthErrorType.not_licensed: 'not_licensed',
  OAuthErrorType.two_factor_required: 'two_factor_required',
  OAuthErrorType.authorization_pending: 'authorization_pending',
  OAuthErrorType.expired_token: 'expired_token',
  OAuthErrorType.unsupported_token_type: 'unsupported_token_type',
};

const _$OAuthErrorReasonEnumMap = {
  OAuthErrorReason.auth_code_not_found: 'auth_code_not_found',
  OAuthErrorReason.access_token_malformed: 'access_token_malformed',
  OAuthErrorReason.access_token_expired: 'access_token_expired',
  OAuthErrorReason.access_token_unavailable_for_processing:
      'access_token_unavailable_for_processing',
  OAuthErrorReason.access_token_failed_processing:
      'access_token_failed_processing',
  OAuthErrorReason.refresh_token_not_found: 'refresh_token_not_found',
  OAuthErrorReason.refresh_token_type_not_supported:
      'refresh_token_type_not_supported',
  OAuthErrorReason.invalid_client_id: 'invalid_client_id',
  OAuthErrorReason.invalid_user_credentials: 'invalid_user_credentials',
  OAuthErrorReason.invalid_grant_type: 'invalid_grant_type',
  OAuthErrorReason.invalid_origin: 'invalid_origin',
  OAuthErrorReason.invalid_origin_opaque: 'invalid_origin_opaque',
  OAuthErrorReason.invalid_pkce_code_verifier: 'invalid_pkce_code_verifier',
  OAuthErrorReason.invalid_pkce_code_challenge: 'invalid_pkce_code_challenge',
  OAuthErrorReason.invalid_pkce_code_challenge_method:
      'invalid_pkce_code_challenge_method',
  OAuthErrorReason.invalid_redirect_uri: 'invalid_redirect_uri',
  OAuthErrorReason.invalid_response_mode: 'invalid_response_mode',
  OAuthErrorReason.invalid_response_type: 'invalid_response_type',
  OAuthErrorReason.invalid_id_token_hint: 'invalid_id_token_hint',
  OAuthErrorReason.invalid_post_logout_redirect_uri:
      'invalid_post_logout_redirect_uri',
  OAuthErrorReason.invalid_device_code: 'invalid_device_code',
  OAuthErrorReason.invalid_user_code: 'invalid_user_code',
  OAuthErrorReason.invalid_additional_client_id: 'invalid_additional_client_id',
  OAuthErrorReason.invalid_target_entity_scope: 'invalid_target_entity_scope',
  OAuthErrorReason.invalid_entity_permission_scope:
      'invalid_entity_permission_scope',
  OAuthErrorReason.grant_type_disabled: 'grant_type_disabled',
  OAuthErrorReason.missing_client_id: 'missing_client_id',
  OAuthErrorReason.missing_client_secret: 'missing_client_secret',
  OAuthErrorReason.missing_code: 'missing_code',
  OAuthErrorReason.missing_code_challenge: 'missing_code_challenge',
  OAuthErrorReason.missing_code_verifier: 'missing_code_verifier',
  OAuthErrorReason.missing_device_code: 'missing_device_code',
  OAuthErrorReason.missing_grant_type: 'missing_grant_type',
  OAuthErrorReason.missing_redirect_uri: 'missing_redirect_uri',
  OAuthErrorReason.missing_refresh_token: 'missing_refresh_token',
  OAuthErrorReason.missing_response_type: 'missing_response_type',
  OAuthErrorReason.missing_token: 'missing_token',
  OAuthErrorReason.missing_user_code: 'missing_user_code',
  OAuthErrorReason.missing_verification_uri: 'missing_verification_uri',
  OAuthErrorReason.login_prevented: 'login_prevented',
  OAuthErrorReason.not_licensed: 'not_licensed',
  OAuthErrorReason.user_code_expired: 'user_code_expired',
  OAuthErrorReason.user_expired: 'user_expired',
  OAuthErrorReason.user_locked: 'user_locked',
  OAuthErrorReason.user_not_found: 'user_not_found',
  OAuthErrorReason.client_authentication_missing:
      'client_authentication_missing',
  OAuthErrorReason.invalid_client_authentication_scheme:
      'invalid_client_authentication_scheme',
  OAuthErrorReason.invalid_client_authentication:
      'invalid_client_authentication',
  OAuthErrorReason.client_id_mismatch: 'client_id_mismatch',
  OAuthErrorReason.change_password_administrative:
      'change_password_administrative',
  OAuthErrorReason.change_password_breached: 'change_password_breached',
  OAuthErrorReason.change_password_expired: 'change_password_expired',
  OAuthErrorReason.change_password_validation: 'change_password_validation',
  OAuthErrorReason.unknown: 'unknown',
};

OAuthResponse _$OAuthResponseFromJson(Map<String, dynamic> json) =>
    OAuthResponse();

Map<String, dynamic> _$OAuthResponseToJson(OAuthResponse instance) =>
    <String, dynamic>{};

OpenIdConfiguration _$OpenIdConfigurationFromJson(Map<String, dynamic> json) =>
    OpenIdConfiguration(
      authorization_endpoint: json['authorization_endpoint'] as String?,
      backchannel_logout_supported:
          json['backchannel_logout_supported'] as bool?,
      claims_supported: (json['claims_supported'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      device_authorization_endpoint:
          json['device_authorization_endpoint'] as String?,
      end_session_endpoint: json['end_session_endpoint'] as String?,
      frontchannel_logout_supported:
          json['frontchannel_logout_supported'] as bool?,
      grant_types_supported: (json['grant_types_supported'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id_token_signing_alg_values_supported:
          (json['id_token_signing_alg_values_supported'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      issuer: json['issuer'] as String?,
      jwks_uri: json['jwks_uri'] as String?,
      response_modes_supported:
          (json['response_modes_supported'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      response_types_supported:
          (json['response_types_supported'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      scopes_supported: (json['scopes_supported'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subject_types_supported:
          (json['subject_types_supported'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      token_endpoint: json['token_endpoint'] as String?,
      token_endpoint_auth_methods_supported:
          (json['token_endpoint_auth_methods_supported'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      userinfo_endpoint: json['userinfo_endpoint'] as String?,
      userinfo_signing_alg_values_supported:
          (json['userinfo_signing_alg_values_supported'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$OpenIdConfigurationToJson(OpenIdConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authorization_endpoint', instance.authorization_endpoint);
  writeNotNull(
      'backchannel_logout_supported', instance.backchannel_logout_supported);
  writeNotNull('claims_supported', instance.claims_supported);
  writeNotNull(
      'device_authorization_endpoint', instance.device_authorization_endpoint);
  writeNotNull('end_session_endpoint', instance.end_session_endpoint);
  writeNotNull(
      'frontchannel_logout_supported', instance.frontchannel_logout_supported);
  writeNotNull('grant_types_supported', instance.grant_types_supported);
  writeNotNull('id_token_signing_alg_values_supported',
      instance.id_token_signing_alg_values_supported);
  writeNotNull('issuer', instance.issuer);
  writeNotNull('jwks_uri', instance.jwks_uri);
  writeNotNull('response_modes_supported', instance.response_modes_supported);
  writeNotNull('response_types_supported', instance.response_types_supported);
  writeNotNull('scopes_supported', instance.scopes_supported);
  writeNotNull('subject_types_supported', instance.subject_types_supported);
  writeNotNull('token_endpoint', instance.token_endpoint);
  writeNotNull('token_endpoint_auth_methods_supported',
      instance.token_endpoint_auth_methods_supported);
  writeNotNull('userinfo_endpoint', instance.userinfo_endpoint);
  writeNotNull('userinfo_signing_alg_values_supported',
      instance.userinfo_signing_alg_values_supported);
  return val;
}

OpenIdConnectApplicationConfiguration
    _$OpenIdConnectApplicationConfigurationFromJson(
            Map<String, dynamic> json) =>
        OpenIdConnectApplicationConfiguration(
          buttonImageURL: json['buttonImageURL'] as String?,
          buttonText: json['buttonText'] as String?,
          oauth2: json['oauth2'] == null
              ? null
              : IdentityProviderOauth2Configuration.fromJson(
                  json['oauth2'] as Map<String, dynamic>),
        )
          ..enabled = json['enabled'] as bool?
          ..createRegistration = json['createRegistration'] as bool?
          ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$OpenIdConnectApplicationConfigurationToJson(
    OpenIdConnectApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonImageURL', instance.buttonImageURL);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('oauth2', instance.oauth2);
  return val;
}

OpenIdConnectIdentityProvider _$OpenIdConnectIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    OpenIdConnectIdentityProvider(
      buttonImageURL: json['buttonImageURL'] as String?,
      buttonText: json['buttonText'] as String?,
      domains:
          (json['domains'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      oauth2: json['oauth2'] == null
          ? null
          : IdentityProviderOauth2Configuration.fromJson(
              json['oauth2'] as Map<String, dynamic>),
      postRequest: json['postRequest'] as bool?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            OpenIdConnectApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$OpenIdConnectIdentityProviderToJson(
    OpenIdConnectIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonImageURL', instance.buttonImageURL);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('domains', instance.domains?.toList());
  writeNotNull('oauth2', instance.oauth2);
  writeNotNull('postRequest', instance.postRequest);
  return val;
}

PasswordBreachDetection _$PasswordBreachDetectionFromJson(
        Map<String, dynamic> json) =>
    PasswordBreachDetection(
      matchMode:
          _$enumDecodeNullable(_$BreachMatchModeEnumMap, json['matchMode']),
      notifyUserEmailTemplateId: json['notifyUserEmailTemplateId'] as String?,
      onLogin: _$enumDecodeNullable(_$BreachActionEnumMap, json['onLogin']),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$PasswordBreachDetectionToJson(
    PasswordBreachDetection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('matchMode', _$BreachMatchModeEnumMap[instance.matchMode]);
  writeNotNull('notifyUserEmailTemplateId', instance.notifyUserEmailTemplateId);
  writeNotNull('onLogin', _$BreachActionEnumMap[instance.onLogin]);
  return val;
}

const _$BreachMatchModeEnumMap = {
  BreachMatchMode.Low: 'Low',
  BreachMatchMode.Medium: 'Medium',
  BreachMatchMode.High: 'High',
};

const _$BreachActionEnumMap = {
  BreachAction.Off: 'Off',
  BreachAction.RecordOnly: 'RecordOnly',
  BreachAction.NotifyUser: 'NotifyUser',
  BreachAction.RequireChange: 'RequireChange',
};

PasswordEncryptionConfiguration _$PasswordEncryptionConfigurationFromJson(
        Map<String, dynamic> json) =>
    PasswordEncryptionConfiguration(
      encryptionScheme: json['encryptionScheme'] as String?,
      encryptionSchemeFactor: json['encryptionSchemeFactor'] as num?,
      modifyEncryptionSchemeOnLogin:
          json['modifyEncryptionSchemeOnLogin'] as bool?,
    );

Map<String, dynamic> _$PasswordEncryptionConfigurationToJson(
    PasswordEncryptionConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('encryptionScheme', instance.encryptionScheme);
  writeNotNull('encryptionSchemeFactor', instance.encryptionSchemeFactor);
  writeNotNull(
      'modifyEncryptionSchemeOnLogin', instance.modifyEncryptionSchemeOnLogin);
  return val;
}

PasswordlessConfiguration _$PasswordlessConfigurationFromJson(
        Map<String, dynamic> json) =>
    PasswordlessConfiguration()..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$PasswordlessConfigurationToJson(
    PasswordlessConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  return val;
}

PasswordlessIdentityProvider _$PasswordlessIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    PasswordlessIdentityProvider();

Map<String, dynamic> _$PasswordlessIdentityProviderToJson(
        PasswordlessIdentityProvider instance) =>
    <String, dynamic>{};

PasswordlessLoginRequest _$PasswordlessLoginRequestFromJson(
        Map<String, dynamic> json) =>
    PasswordlessLoginRequest(
      code: json['code'] as String?,
      twoFactorTrustId: json['twoFactorTrustId'] as String?,
    )
      ..eventInfo = json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>)
      ..applicationId = json['applicationId'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..metaData = json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>)
      ..newDevice = json['newDevice'] as bool?
      ..noJWT = json['noJWT'] as bool?;

Map<String, dynamic> _$PasswordlessLoginRequestToJson(
    PasswordlessLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('newDevice', instance.newDevice);
  writeNotNull('noJWT', instance.noJWT);
  writeNotNull('code', instance.code);
  writeNotNull('twoFactorTrustId', instance.twoFactorTrustId);
  return val;
}

PasswordlessSendRequest _$PasswordlessSendRequestFromJson(
        Map<String, dynamic> json) =>
    PasswordlessSendRequest(
      applicationId: json['applicationId'] as String?,
      code: json['code'] as String?,
      loginId: json['loginId'] as String?,
      state: json['state'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PasswordlessSendRequestToJson(
    PasswordlessSendRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('code', instance.code);
  writeNotNull('loginId', instance.loginId);
  writeNotNull('state', instance.state);
  return val;
}

PasswordlessStartRequest _$PasswordlessStartRequestFromJson(
        Map<String, dynamic> json) =>
    PasswordlessStartRequest(
      applicationId: json['applicationId'] as String?,
      loginId: json['loginId'] as String?,
      state: json['state'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PasswordlessStartRequestToJson(
    PasswordlessStartRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('loginId', instance.loginId);
  writeNotNull('state', instance.state);
  return val;
}

PasswordlessStartResponse _$PasswordlessStartResponseFromJson(
        Map<String, dynamic> json) =>
    PasswordlessStartResponse(
      code: json['code'] as String?,
    );

Map<String, dynamic> _$PasswordlessStartResponseToJson(
    PasswordlessStartResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  return val;
}

PasswordValidationRules _$PasswordValidationRulesFromJson(
        Map<String, dynamic> json) =>
    PasswordValidationRules(
      breachDetection: json['breachDetection'] == null
          ? null
          : PasswordBreachDetection.fromJson(
              json['breachDetection'] as Map<String, dynamic>),
      maxLength: json['maxLength'] as num?,
      minLength: json['minLength'] as num?,
      rememberPreviousPasswords: json['rememberPreviousPasswords'] == null
          ? null
          : RememberPreviousPasswords.fromJson(
              json['rememberPreviousPasswords'] as Map<String, dynamic>),
      requireMixedCase: json['requireMixedCase'] as bool?,
      requireNonAlpha: json['requireNonAlpha'] as bool?,
      requireNumber: json['requireNumber'] as bool?,
      validateOnLogin: json['validateOnLogin'] as bool?,
    );

Map<String, dynamic> _$PasswordValidationRulesToJson(
    PasswordValidationRules instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('breachDetection', instance.breachDetection);
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('minLength', instance.minLength);
  writeNotNull('rememberPreviousPasswords', instance.rememberPreviousPasswords);
  writeNotNull('requireMixedCase', instance.requireMixedCase);
  writeNotNull('requireNonAlpha', instance.requireNonAlpha);
  writeNotNull('requireNumber', instance.requireNumber);
  writeNotNull('validateOnLogin', instance.validateOnLogin);
  return val;
}

PasswordValidationRulesResponse _$PasswordValidationRulesResponseFromJson(
        Map<String, dynamic> json) =>
    PasswordValidationRulesResponse(
      passwordValidationRules: json['passwordValidationRules'] == null
          ? null
          : PasswordValidationRules.fromJson(
              json['passwordValidationRules'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PasswordValidationRulesResponseToJson(
    PasswordValidationRulesResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('passwordValidationRules', instance.passwordValidationRules);
  return val;
}

PendingIdPLink _$PendingIdPLinkFromJson(Map<String, dynamic> json) =>
    PendingIdPLink(
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      identityProviderId: json['identityProviderId'] as String?,
      identityProviderLinks: (json['identityProviderLinks'] as List<dynamic>?)
          ?.map((e) => IdentityProviderLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      identityProviderName: json['identityProviderName'] as String?,
      identityProviderTenantConfiguration:
          json['identityProviderTenantConfiguration'] == null
              ? null
              : IdentityProviderTenantConfiguration.fromJson(
                  json['identityProviderTenantConfiguration']
                      as Map<String, dynamic>),
      identityProviderType: _$enumDecodeNullable(
          _$IdentityProviderTypeEnumMap, json['identityProviderType']),
      identityProviderUserId: json['identityProviderUserId'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$PendingIdPLinkToJson(PendingIdPLink instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('displayName', instance.displayName);
  writeNotNull('email', instance.email);
  writeNotNull('identityProviderId', instance.identityProviderId);
  writeNotNull('identityProviderLinks', instance.identityProviderLinks);
  writeNotNull('identityProviderName', instance.identityProviderName);
  writeNotNull('identityProviderTenantConfiguration',
      instance.identityProviderTenantConfiguration);
  writeNotNull('identityProviderType',
      _$IdentityProviderTypeEnumMap[instance.identityProviderType]);
  writeNotNull('identityProviderUserId', instance.identityProviderUserId);
  writeNotNull('user', instance.user);
  writeNotNull('username', instance.username);
  return val;
}

PendingResponse _$PendingResponseFromJson(Map<String, dynamic> json) =>
    PendingResponse(
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PendingResponseToJson(PendingResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('users', instance.users);
  return val;
}

PreviewMessageTemplateRequest _$PreviewMessageTemplateRequestFromJson(
        Map<String, dynamic> json) =>
    PreviewMessageTemplateRequest(
      locale: json['locale'] as String?,
      messageTemplate: json['messageTemplate'] == null
          ? null
          : MessageTemplate.fromJson(
              json['messageTemplate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreviewMessageTemplateRequestToJson(
    PreviewMessageTemplateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('locale', instance.locale);
  writeNotNull('messageTemplate', instance.messageTemplate);
  return val;
}

PreviewMessageTemplateResponse _$PreviewMessageTemplateResponseFromJson(
        Map<String, dynamic> json) =>
    PreviewMessageTemplateResponse(
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : SMSMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreviewMessageTemplateResponseToJson(
    PreviewMessageTemplateResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  writeNotNull('message', instance.message);
  return val;
}

PreviewRequest _$PreviewRequestFromJson(Map<String, dynamic> json) =>
    PreviewRequest(
      emailTemplate: json['emailTemplate'] == null
          ? null
          : EmailTemplate.fromJson(
              json['emailTemplate'] as Map<String, dynamic>),
      locale: json['locale'] as String?,
    );

Map<String, dynamic> _$PreviewRequestToJson(PreviewRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emailTemplate', instance.emailTemplate);
  writeNotNull('locale', instance.locale);
  return val;
}

PreviewResponse _$PreviewResponseFromJson(Map<String, dynamic> json) =>
    PreviewResponse(
      email: json['email'] == null
          ? null
          : Email.fromJson(json['email'] as Map<String, dynamic>),
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreviewResponseToJson(PreviewResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('errors', instance.errors);
  return val;
}

PublicKeyCredentialCreationOptions _$PublicKeyCredentialCreationOptionsFromJson(
        Map<String, dynamic> json) =>
    PublicKeyCredentialCreationOptions(
      attestation: _$enumDecodeNullable(
          _$AttestationConveyancePreferenceEnumMap, json['attestation']),
      authenticatorSelection: json['authenticatorSelection'] == null
          ? null
          : AuthenticatorSelectionCriteria.fromJson(
              json['authenticatorSelection'] as Map<String, dynamic>),
      challenge: json['challenge'] as String?,
      excludeCredentials: (json['excludeCredentials'] as List<dynamic>?)
          ?.map((e) =>
              PublicKeyCredentialDescriptor.fromJson(e as Map<String, dynamic>))
          .toList(),
      extensions: json['extensions'] == null
          ? null
          : WebAuthnRegistrationExtensionOptions.fromJson(
              json['extensions'] as Map<String, dynamic>),
      pubKeyCredParams: (json['pubKeyCredParams'] as List<dynamic>?)
          ?.map((e) =>
              PublicKeyCredentialParameters.fromJson(e as Map<String, dynamic>))
          .toList(),
      rp: json['rp'] == null
          ? null
          : PublicKeyCredentialRelyingPartyEntity.fromJson(
              json['rp'] as Map<String, dynamic>),
      timeout: json['timeout'] as num?,
      user: json['user'] == null
          ? null
          : PublicKeyCredentialUserEntity.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PublicKeyCredentialCreationOptionsToJson(
    PublicKeyCredentialCreationOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attestation',
      _$AttestationConveyancePreferenceEnumMap[instance.attestation]);
  writeNotNull('authenticatorSelection', instance.authenticatorSelection);
  writeNotNull('challenge', instance.challenge);
  writeNotNull('excludeCredentials', instance.excludeCredentials);
  writeNotNull('extensions', instance.extensions);
  writeNotNull('pubKeyCredParams', instance.pubKeyCredParams);
  writeNotNull('rp', instance.rp);
  writeNotNull('timeout', instance.timeout);
  writeNotNull('user', instance.user);
  return val;
}

const _$AttestationConveyancePreferenceEnumMap = {
  AttestationConveyancePreference.none: 'none',
  AttestationConveyancePreference.indirect: 'indirect',
  AttestationConveyancePreference.direct: 'direct',
  AttestationConveyancePreference.enterprise: 'enterprise',
};

PublicKeyCredentialDescriptor _$PublicKeyCredentialDescriptorFromJson(
        Map<String, dynamic> json) =>
    PublicKeyCredentialDescriptor(
      id: json['id'] as String?,
      transports: (json['transports'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      type:
          _$enumDecodeNullable(_$PublicKeyCredentialTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$PublicKeyCredentialDescriptorToJson(
    PublicKeyCredentialDescriptor instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('transports', instance.transports);
  writeNotNull('type', _$PublicKeyCredentialTypeEnumMap[instance.type]);
  return val;
}

const _$PublicKeyCredentialTypeEnumMap = {
  PublicKeyCredentialType.publicKey: 'publicKey',
};

PublicKeyCredentialEntity _$PublicKeyCredentialEntityFromJson(
        Map<String, dynamic> json) =>
    PublicKeyCredentialEntity(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PublicKeyCredentialEntityToJson(
    PublicKeyCredentialEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

PublicKeyCredentialParameters _$PublicKeyCredentialParametersFromJson(
        Map<String, dynamic> json) =>
    PublicKeyCredentialParameters(
      alg: _$enumDecodeNullable(_$CoseAlgorithmIdentifierEnumMap, json['alg']),
      type:
          _$enumDecodeNullable(_$PublicKeyCredentialTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$PublicKeyCredentialParametersToJson(
    PublicKeyCredentialParameters instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alg', _$CoseAlgorithmIdentifierEnumMap[instance.alg]);
  writeNotNull('type', _$PublicKeyCredentialTypeEnumMap[instance.type]);
  return val;
}

const _$CoseAlgorithmIdentifierEnumMap = {
  CoseAlgorithmIdentifier.ES256: 'ES256',
  CoseAlgorithmIdentifier.ES384: 'ES384',
  CoseAlgorithmIdentifier.ES512: 'ES512',
  CoseAlgorithmIdentifier.RS256: 'RS256',
  CoseAlgorithmIdentifier.RS384: 'RS384',
  CoseAlgorithmIdentifier.RS512: 'RS512',
  CoseAlgorithmIdentifier.PS256: 'PS256',
  CoseAlgorithmIdentifier.PS384: 'PS384',
  CoseAlgorithmIdentifier.PS512: 'PS512',
};

PublicKeyCredentialRelyingPartyEntity
    _$PublicKeyCredentialRelyingPartyEntityFromJson(
            Map<String, dynamic> json) =>
        PublicKeyCredentialRelyingPartyEntity(
          id: json['id'] as String?,
        )..name = json['name'] as String?;

Map<String, dynamic> _$PublicKeyCredentialRelyingPartyEntityToJson(
    PublicKeyCredentialRelyingPartyEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  return val;
}

PublicKeyCredentialRequestOptions _$PublicKeyCredentialRequestOptionsFromJson(
        Map<String, dynamic> json) =>
    PublicKeyCredentialRequestOptions(
      allowCredentials: (json['allowCredentials'] as List<dynamic>?)
          ?.map((e) =>
              PublicKeyCredentialDescriptor.fromJson(e as Map<String, dynamic>))
          .toList(),
      challenge: json['challenge'] as String?,
      rpId: json['rpId'] as String?,
      timeout: json['timeout'] as num?,
      userVerification: _$enumDecodeNullable(
          _$UserVerificationRequirementEnumMap, json['userVerification']),
    );

Map<String, dynamic> _$PublicKeyCredentialRequestOptionsToJson(
    PublicKeyCredentialRequestOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('allowCredentials', instance.allowCredentials);
  writeNotNull('challenge', instance.challenge);
  writeNotNull('rpId', instance.rpId);
  writeNotNull('timeout', instance.timeout);
  writeNotNull('userVerification',
      _$UserVerificationRequirementEnumMap[instance.userVerification]);
  return val;
}

PublicKeyCredentialUserEntity _$PublicKeyCredentialUserEntityFromJson(
        Map<String, dynamic> json) =>
    PublicKeyCredentialUserEntity(
      displayName: json['displayName'] as String?,
      id: json['id'] as String?,
    )..name = json['name'] as String?;

Map<String, dynamic> _$PublicKeyCredentialUserEntityToJson(
    PublicKeyCredentialUserEntity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('id', instance.id);
  return val;
}

PublicKeyResponse _$PublicKeyResponseFromJson(Map<String, dynamic> json) =>
    PublicKeyResponse(
      publicKey: json['publicKey'] as String?,
      publicKeys: (json['publicKeys'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$PublicKeyResponseToJson(PublicKeyResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('publicKey', instance.publicKey);
  writeNotNull('publicKeys', instance.publicKeys);
  return val;
}

RateLimitedRequestConfiguration _$RateLimitedRequestConfigurationFromJson(
        Map<String, dynamic> json) =>
    RateLimitedRequestConfiguration(
      limit: json['limit'] as num?,
      timePeriodInSeconds: json['timePeriodInSeconds'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$RateLimitedRequestConfigurationToJson(
    RateLimitedRequestConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('limit', instance.limit);
  writeNotNull('timePeriodInSeconds', instance.timePeriodInSeconds);
  return val;
}

RawLogin _$RawLoginFromJson(Map<String, dynamic> json) => RawLogin(
      applicationId: json['applicationId'] as String?,
      instant: json['instant'] as num?,
      ipAddress: json['ipAddress'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$RawLoginToJson(RawLogin instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('instant', instance.instant);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('userId', instance.userId);
  return val;
}

ReactorMetrics _$ReactorMetricsFromJson(Map<String, dynamic> json) =>
    ReactorMetrics(
      breachedPasswordMetrics:
          (json['breachedPasswordMetrics'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            BreachedPasswordTenantMetric.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$ReactorMetricsToJson(ReactorMetrics instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('breachedPasswordMetrics', instance.breachedPasswordMetrics);
  return val;
}

ReactorMetricsResponse _$ReactorMetricsResponseFromJson(
        Map<String, dynamic> json) =>
    ReactorMetricsResponse(
      metrics: json['metrics'] == null
          ? null
          : ReactorMetrics.fromJson(json['metrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReactorMetricsResponseToJson(
    ReactorMetricsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metrics', instance.metrics);
  return val;
}

ReactorRequest _$ReactorRequestFromJson(Map<String, dynamic> json) =>
    ReactorRequest(
      license: json['license'] as String?,
      licenseId: json['licenseId'] as String?,
    );

Map<String, dynamic> _$ReactorRequestToJson(ReactorRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('license', instance.license);
  writeNotNull('licenseId', instance.licenseId);
  return val;
}

ReactorResponse _$ReactorResponseFromJson(Map<String, dynamic> json) =>
    ReactorResponse(
      status: json['status'] == null
          ? null
          : ReactorStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReactorResponseToJson(ReactorResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  return val;
}

ReactorStatus _$ReactorStatusFromJson(Map<String, dynamic> json) =>
    ReactorStatus(
      advancedIdentityProviders: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['advancedIdentityProviders']),
      advancedLambdas: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['advancedLambdas']),
      advancedMultiFactorAuthentication: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap,
          json['advancedMultiFactorAuthentication']),
      advancedRegistration: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['advancedRegistration']),
      applicationMultiFactorAuthentication: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap,
          json['applicationMultiFactorAuthentication']),
      applicationThemes: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['applicationThemes']),
      breachedPasswordDetection: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['breachedPasswordDetection']),
      connectors: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['connectors']),
      entityManagement: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['entityManagement']),
      expiration: json['expiration'] as String?,
      licenseAttributes:
          (json['licenseAttributes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      licensed: json['licensed'] as bool?,
      scimServer: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['scimServer']),
      threatDetection: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['threatDetection']),
      webAuthn:
          _$enumDecodeNullable(_$ReactorFeatureStatusEnumMap, json['webAuthn']),
      webAuthnPlatformAuthenticators: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap,
          json['webAuthnPlatformAuthenticators']),
      webAuthnRoamingAuthenticators: _$enumDecodeNullable(
          _$ReactorFeatureStatusEnumMap, json['webAuthnRoamingAuthenticators']),
    );

Map<String, dynamic> _$ReactorStatusToJson(ReactorStatus instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('advancedIdentityProviders',
      _$ReactorFeatureStatusEnumMap[instance.advancedIdentityProviders]);
  writeNotNull('advancedLambdas',
      _$ReactorFeatureStatusEnumMap[instance.advancedLambdas]);
  writeNotNull(
      'advancedMultiFactorAuthentication',
      _$ReactorFeatureStatusEnumMap[
          instance.advancedMultiFactorAuthentication]);
  writeNotNull('advancedRegistration',
      _$ReactorFeatureStatusEnumMap[instance.advancedRegistration]);
  writeNotNull(
      'applicationMultiFactorAuthentication',
      _$ReactorFeatureStatusEnumMap[
          instance.applicationMultiFactorAuthentication]);
  writeNotNull('applicationThemes',
      _$ReactorFeatureStatusEnumMap[instance.applicationThemes]);
  writeNotNull('breachedPasswordDetection',
      _$ReactorFeatureStatusEnumMap[instance.breachedPasswordDetection]);
  writeNotNull(
      'connectors', _$ReactorFeatureStatusEnumMap[instance.connectors]);
  writeNotNull('entityManagement',
      _$ReactorFeatureStatusEnumMap[instance.entityManagement]);
  writeNotNull('expiration', instance.expiration);
  writeNotNull('licenseAttributes', instance.licenseAttributes);
  writeNotNull('licensed', instance.licensed);
  writeNotNull(
      'scimServer', _$ReactorFeatureStatusEnumMap[instance.scimServer]);
  writeNotNull('threatDetection',
      _$ReactorFeatureStatusEnumMap[instance.threatDetection]);
  writeNotNull('webAuthn', _$ReactorFeatureStatusEnumMap[instance.webAuthn]);
  writeNotNull('webAuthnPlatformAuthenticators',
      _$ReactorFeatureStatusEnumMap[instance.webAuthnPlatformAuthenticators]);
  writeNotNull('webAuthnRoamingAuthenticators',
      _$ReactorFeatureStatusEnumMap[instance.webAuthnRoamingAuthenticators]);
  return val;
}

const _$ReactorFeatureStatusEnumMap = {
  ReactorFeatureStatus.ACTIVE: 'ACTIVE',
  ReactorFeatureStatus.DISCONNECTED: 'DISCONNECTED',
  ReactorFeatureStatus.PENDING: 'PENDING',
  ReactorFeatureStatus.DISABLED: 'DISABLED',
  ReactorFeatureStatus.UNKNOWN: 'UNKNOWN',
};

RecentLoginResponse _$RecentLoginResponseFromJson(Map<String, dynamic> json) =>
    RecentLoginResponse(
      logins: (json['logins'] as List<dynamic>?)
          ?.map((e) => DisplayableRawLogin.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecentLoginResponseToJson(RecentLoginResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('logins', instance.logins);
  return val;
}

RefreshRequest _$RefreshRequestFromJson(Map<String, dynamic> json) =>
    RefreshRequest(
      refreshToken: json['refreshToken'] as String?,
      token: json['token'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$RefreshRequestToJson(RefreshRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('refreshToken', instance.refreshToken);
  writeNotNull('token', instance.token);
  return val;
}

RefreshResponse _$RefreshResponseFromJson(Map<String, dynamic> json) =>
    RefreshResponse();

Map<String, dynamic> _$RefreshResponseToJson(RefreshResponse instance) =>
    <String, dynamic>{};

RefreshToken _$RefreshTokenFromJson(Map<String, dynamic> json) => RefreshToken(
      applicationId: json['applicationId'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      metaData: json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>),
      startInstant: json['startInstant'] as num?,
      tenantId: json['tenantId'] as String?,
      token: json['token'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$RefreshTokenToJson(RefreshToken instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('data', instance.data);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('startInstant', instance.startInstant);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('token', instance.token);
  writeNotNull('userId', instance.userId);
  return val;
}

RefreshTokenImportRequest _$RefreshTokenImportRequestFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenImportRequest(
      refreshTokens: (json['refreshTokens'] as List<dynamic>?)
          ?.map((e) => RefreshToken.fromJson(e as Map<String, dynamic>))
          .toList(),
      validateDbConstraints: json['validateDbConstraints'] as bool?,
    );

Map<String, dynamic> _$RefreshTokenImportRequestToJson(
    RefreshTokenImportRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refreshTokens', instance.refreshTokens);
  writeNotNull('validateDbConstraints', instance.validateDbConstraints);
  return val;
}

RefreshTokenResponse _$RefreshTokenResponseFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenResponse(
      refreshToken: json['refreshToken'] == null
          ? null
          : RefreshToken.fromJson(json['refreshToken'] as Map<String, dynamic>),
      refreshTokens: (json['refreshTokens'] as List<dynamic>?)
          ?.map((e) => RefreshToken.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RefreshTokenResponseToJson(
    RefreshTokenResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refreshToken', instance.refreshToken);
  writeNotNull('refreshTokens', instance.refreshTokens);
  return val;
}

RefreshTokenRevocationPolicy _$RefreshTokenRevocationPolicyFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenRevocationPolicy(
      onLoginPrevented: json['onLoginPrevented'] as bool?,
      onMultiFactorEnable: json['onMultiFactorEnable'] as bool?,
      onPasswordChanged: json['onPasswordChanged'] as bool?,
    );

Map<String, dynamic> _$RefreshTokenRevocationPolicyToJson(
    RefreshTokenRevocationPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('onLoginPrevented', instance.onLoginPrevented);
  writeNotNull('onMultiFactorEnable', instance.onMultiFactorEnable);
  writeNotNull('onPasswordChanged', instance.onPasswordChanged);
  return val;
}

RefreshTokenRevokeRequest _$RefreshTokenRevokeRequestFromJson(
        Map<String, dynamic> json) =>
    RefreshTokenRevokeRequest(
      applicationId: json['applicationId'] as String?,
      token: json['token'] as String?,
      userId: json['userId'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$RefreshTokenRevokeRequestToJson(
    RefreshTokenRevokeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('token', instance.token);
  writeNotNull('userId', instance.userId);
  return val;
}

RegistrationConfiguration _$RegistrationConfigurationFromJson(
        Map<String, dynamic> json) =>
    RegistrationConfiguration(
      birthDate: json['birthDate'] == null
          ? null
          : Requirable.fromJson(json['birthDate'] as Map<String, dynamic>),
      confirmPassword: json['confirmPassword'] as bool?,
      firstName: json['firstName'] == null
          ? null
          : Requirable.fromJson(json['firstName'] as Map<String, dynamic>),
      formId: json['formId'] as String?,
      fullName: json['fullName'] == null
          ? null
          : Requirable.fromJson(json['fullName'] as Map<String, dynamic>),
      lastName: json['lastName'] == null
          ? null
          : Requirable.fromJson(json['lastName'] as Map<String, dynamic>),
      loginIdType:
          _$enumDecodeNullable(_$LoginIdTypeEnumMap, json['loginIdType']),
      middleName: json['middleName'] == null
          ? null
          : Requirable.fromJson(json['middleName'] as Map<String, dynamic>),
      mobilePhone: json['mobilePhone'] == null
          ? null
          : Requirable.fromJson(json['mobilePhone'] as Map<String, dynamic>),
      type: _$enumDecodeNullable(_$RegistrationTypeEnumMap, json['type']),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$RegistrationConfigurationToJson(
    RegistrationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('birthDate', instance.birthDate);
  writeNotNull('confirmPassword', instance.confirmPassword);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('formId', instance.formId);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('loginIdType', _$LoginIdTypeEnumMap[instance.loginIdType]);
  writeNotNull('middleName', instance.middleName);
  writeNotNull('mobilePhone', instance.mobilePhone);
  writeNotNull('type', _$RegistrationTypeEnumMap[instance.type]);
  return val;
}

const _$LoginIdTypeEnumMap = {
  LoginIdType.email: 'email',
  LoginIdType.username: 'username',
};

const _$RegistrationTypeEnumMap = {
  RegistrationType.basic: 'basic',
  RegistrationType.advanced: 'advanced',
};

RegistrationDeleteRequest _$RegistrationDeleteRequestFromJson(
        Map<String, dynamic> json) =>
    RegistrationDeleteRequest()
      ..eventInfo = json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$RegistrationDeleteRequestToJson(
    RegistrationDeleteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  return val;
}

RegistrationReportResponse _$RegistrationReportResponseFromJson(
        Map<String, dynamic> json) =>
    RegistrationReportResponse(
      hourlyCounts: (json['hourlyCounts'] as List<dynamic>?)
          ?.map((e) => Count.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as num?,
    );

Map<String, dynamic> _$RegistrationReportResponseToJson(
    RegistrationReportResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hourlyCounts', instance.hourlyCounts);
  writeNotNull('total', instance.total);
  return val;
}

RegistrationRequest _$RegistrationRequestFromJson(Map<String, dynamic> json) =>
    RegistrationRequest(
      disableDomainBlock: json['disableDomainBlock'] as bool?,
      generateAuthenticationToken: json['generateAuthenticationToken'] as bool?,
      registration: json['registration'] == null
          ? null
          : UserRegistration.fromJson(
              json['registration'] as Map<String, dynamic>),
      sendSetPasswordEmail: json['sendSetPasswordEmail'] as bool?,
      skipRegistrationVerification:
          json['skipRegistrationVerification'] as bool?,
      skipVerification: json['skipVerification'] as bool?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$RegistrationRequestToJson(RegistrationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('disableDomainBlock', instance.disableDomainBlock);
  writeNotNull(
      'generateAuthenticationToken', instance.generateAuthenticationToken);
  writeNotNull('registration', instance.registration);
  writeNotNull('sendSetPasswordEmail', instance.sendSetPasswordEmail);
  writeNotNull(
      'skipRegistrationVerification', instance.skipRegistrationVerification);
  writeNotNull('skipVerification', instance.skipVerification);
  writeNotNull('user', instance.user);
  return val;
}

RegistrationResponse _$RegistrationResponseFromJson(
        Map<String, dynamic> json) =>
    RegistrationResponse(
      refreshToken: json['refreshToken'] as String?,
      registration: json['registration'] == null
          ? null
          : UserRegistration.fromJson(
              json['registration'] as Map<String, dynamic>),
      registrationVerificationId: json['registrationVerificationId'] as String?,
      token: json['token'] as String?,
      tokenExpirationInstant: json['tokenExpirationInstant'] as num?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegistrationResponseToJson(
    RegistrationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('refreshToken', instance.refreshToken);
  writeNotNull('registration', instance.registration);
  writeNotNull(
      'registrationVerificationId', instance.registrationVerificationId);
  writeNotNull('token', instance.token);
  writeNotNull('tokenExpirationInstant', instance.tokenExpirationInstant);
  writeNotNull('user', instance.user);
  return val;
}

RegistrationUnverifiedOptions _$RegistrationUnverifiedOptionsFromJson(
        Map<String, dynamic> json) =>
    RegistrationUnverifiedOptions(
      behavior:
          _$enumDecodeNullable(_$UnverifiedBehaviorEnumMap, json['behavior']),
    );

Map<String, dynamic> _$RegistrationUnverifiedOptionsToJson(
    RegistrationUnverifiedOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('behavior', _$UnverifiedBehaviorEnumMap[instance.behavior]);
  return val;
}

ReindexRequest _$ReindexRequestFromJson(Map<String, dynamic> json) =>
    ReindexRequest(
      index: json['index'] as String?,
    );

Map<String, dynamic> _$ReindexRequestToJson(ReindexRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('index', instance.index);
  return val;
}

ReloadRequest _$ReloadRequestFromJson(Map<String, dynamic> json) =>
    ReloadRequest(
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ReloadRequestToJson(ReloadRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('names', instance.names);
  return val;
}

RememberPreviousPasswords _$RememberPreviousPasswordsFromJson(
        Map<String, dynamic> json) =>
    RememberPreviousPasswords(
      count: json['count'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$RememberPreviousPasswordsToJson(
    RememberPreviousPasswords instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('count', instance.count);
  return val;
}

Requirable _$RequirableFromJson(Map<String, dynamic> json) => Requirable(
      required: json['required'] as bool?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$RequirableToJson(Requirable instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('required', instance.required);
  return val;
}

RequiresCORSConfiguration _$RequiresCORSConfigurationFromJson(
        Map<String, dynamic> json) =>
    RequiresCORSConfiguration();

Map<String, dynamic> _$RequiresCORSConfigurationToJson(
        RequiresCORSConfiguration instance) =>
    <String, dynamic>{};

SAMLv2ApplicationConfiguration _$SAMLv2ApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    SAMLv2ApplicationConfiguration(
      buttonImageURL: json['buttonImageURL'] as String?,
      buttonText: json['buttonText'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$SAMLv2ApplicationConfigurationToJson(
    SAMLv2ApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonImageURL', instance.buttonImageURL);
  writeNotNull('buttonText', instance.buttonText);
  return val;
}

SAMLv2Configuration _$SAMLv2ConfigurationFromJson(Map<String, dynamic> json) =>
    SAMLv2Configuration(
      audience: json['audience'] as String?,
      authorizedRedirectURLs: (json['authorizedRedirectURLs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      callbackURL: json['callbackURL'] as String?,
      debug: json['debug'] as bool?,
      defaultVerificationKeyId: json['defaultVerificationKeyId'] as String?,
      initiatedLogin: json['initiatedLogin'] == null
          ? null
          : SAMLv2IdPInitiatedLoginConfiguration.fromJson(
              json['initiatedLogin'] as Map<String, dynamic>),
      issuer: json['issuer'] as String?,
      keyId: json['keyId'] as String?,
      logout: json['logout'] == null
          ? null
          : SAMLv2Logout.fromJson(json['logout'] as Map<String, dynamic>),
      logoutURL: json['logoutURL'] as String?,
      requireSignedRequests: json['requireSignedRequests'] as bool?,
      xmlSignatureC14nMethod: _$enumDecodeNullable(
          _$CanonicalizationMethodEnumMap, json['xmlSignatureC14nMethod']),
      xmlSignatureLocation: _$enumDecodeNullable(
          _$XMLSignatureLocationEnumMap, json['xmlSignatureLocation']),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$SAMLv2ConfigurationToJson(SAMLv2Configuration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('audience', instance.audience);
  writeNotNull('authorizedRedirectURLs', instance.authorizedRedirectURLs);
  writeNotNull('callbackURL', instance.callbackURL);
  writeNotNull('debug', instance.debug);
  writeNotNull('defaultVerificationKeyId', instance.defaultVerificationKeyId);
  writeNotNull('initiatedLogin', instance.initiatedLogin);
  writeNotNull('issuer', instance.issuer);
  writeNotNull('keyId', instance.keyId);
  writeNotNull('logout', instance.logout);
  writeNotNull('logoutURL', instance.logoutURL);
  writeNotNull('requireSignedRequests', instance.requireSignedRequests);
  writeNotNull('xmlSignatureC14nMethod',
      _$CanonicalizationMethodEnumMap[instance.xmlSignatureC14nMethod]);
  writeNotNull('xmlSignatureLocation',
      _$XMLSignatureLocationEnumMap[instance.xmlSignatureLocation]);
  return val;
}

const _$CanonicalizationMethodEnumMap = {
  CanonicalizationMethod.exclusive: 'exclusive',
  CanonicalizationMethod.exclusive_with_comments: 'exclusive_with_comments',
  CanonicalizationMethod.inclusive: 'inclusive',
  CanonicalizationMethod.inclusive_with_comments: 'inclusive_with_comments',
};

const _$XMLSignatureLocationEnumMap = {
  XMLSignatureLocation.Assertion: 'Assertion',
  XMLSignatureLocation.Response: 'Response',
};

SAMLv2IdentityProvider _$SAMLv2IdentityProviderFromJson(
        Map<String, dynamic> json) =>
    SAMLv2IdentityProvider(
      buttonImageURL: json['buttonImageURL'] as String?,
      buttonText: json['buttonText'] as String?,
      domains:
          (json['domains'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      emailClaim: json['emailClaim'] as String?,
      idpEndpoint: json['idpEndpoint'] as String?,
      issuer: json['issuer'] as String?,
      keyId: json['keyId'] as String?,
      loginHintConfiguration: json['loginHintConfiguration'] == null
          ? null
          : LoginHintConfiguration.fromJson(
              json['loginHintConfiguration'] as Map<String, dynamic>),
      nameIdFormat: json['nameIdFormat'] as String?,
      postRequest: json['postRequest'] as bool?,
      requestSigningKeyId: json['requestSigningKeyId'] as String?,
      signRequest: json['signRequest'] as bool?,
      uniqueIdClaim: json['uniqueIdClaim'] as String?,
      useNameIdForEmail: json['useNameIdForEmail'] as bool?,
      usernameClaim: json['usernameClaim'] as String?,
      xmlSignatureC14nMethod: _$enumDecodeNullable(
          _$CanonicalizationMethodEnumMap, json['xmlSignatureC14nMethod']),
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            SAMLv2ApplicationConfiguration.fromJson(e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$SAMLv2IdentityProviderToJson(
    SAMLv2IdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonImageURL', instance.buttonImageURL);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('domains', instance.domains?.toList());
  writeNotNull('emailClaim', instance.emailClaim);
  writeNotNull('idpEndpoint', instance.idpEndpoint);
  writeNotNull('issuer', instance.issuer);
  writeNotNull('keyId', instance.keyId);
  writeNotNull('loginHintConfiguration', instance.loginHintConfiguration);
  writeNotNull('nameIdFormat', instance.nameIdFormat);
  writeNotNull('postRequest', instance.postRequest);
  writeNotNull('requestSigningKeyId', instance.requestSigningKeyId);
  writeNotNull('signRequest', instance.signRequest);
  writeNotNull('uniqueIdClaim', instance.uniqueIdClaim);
  writeNotNull('useNameIdForEmail', instance.useNameIdForEmail);
  writeNotNull('usernameClaim', instance.usernameClaim);
  writeNotNull('xmlSignatureC14nMethod',
      _$CanonicalizationMethodEnumMap[instance.xmlSignatureC14nMethod]);
  return val;
}

SAMLv2IdPInitiatedApplicationConfiguration
    _$SAMLv2IdPInitiatedApplicationConfigurationFromJson(
            Map<String, dynamic> json) =>
        SAMLv2IdPInitiatedApplicationConfiguration()
          ..enabled = json['enabled'] as bool?
          ..createRegistration = json['createRegistration'] as bool?
          ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$SAMLv2IdPInitiatedApplicationConfigurationToJson(
    SAMLv2IdPInitiatedApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  return val;
}

SAMLv2IdPInitiatedIdentityProvider _$SAMLv2IdPInitiatedIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    SAMLv2IdPInitiatedIdentityProvider(
      emailClaim: json['emailClaim'] as String?,
      issuer: json['issuer'] as String?,
      keyId: json['keyId'] as String?,
      uniqueIdClaim: json['uniqueIdClaim'] as String?,
      useNameIdForEmail: json['useNameIdForEmail'] as bool?,
      usernameClaim: json['usernameClaim'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            SAMLv2IdPInitiatedApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$SAMLv2IdPInitiatedIdentityProviderToJson(
    SAMLv2IdPInitiatedIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('emailClaim', instance.emailClaim);
  writeNotNull('issuer', instance.issuer);
  writeNotNull('keyId', instance.keyId);
  writeNotNull('uniqueIdClaim', instance.uniqueIdClaim);
  writeNotNull('useNameIdForEmail', instance.useNameIdForEmail);
  writeNotNull('usernameClaim', instance.usernameClaim);
  return val;
}

SAMLv2IdPInitiatedLoginConfiguration
    _$SAMLv2IdPInitiatedLoginConfigurationFromJson(Map<String, dynamic> json) =>
        SAMLv2IdPInitiatedLoginConfiguration(
          nameIdFormat: json['nameIdFormat'] as String?,
        )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$SAMLv2IdPInitiatedLoginConfigurationToJson(
    SAMLv2IdPInitiatedLoginConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('nameIdFormat', instance.nameIdFormat);
  return val;
}

SAMLv2Logout _$SAMLv2LogoutFromJson(Map<String, dynamic> json) => SAMLv2Logout(
      behavior:
          _$enumDecodeNullable(_$SAMLLogoutBehaviorEnumMap, json['behavior']),
      defaultVerificationKeyId: json['defaultVerificationKeyId'] as String?,
      keyId: json['keyId'] as String?,
      requireSignedRequests: json['requireSignedRequests'] as bool?,
      singleLogout: json['singleLogout'] == null
          ? null
          : SAMLv2SingleLogout.fromJson(
              json['singleLogout'] as Map<String, dynamic>),
      xmlSignatureC14nMethod: _$enumDecodeNullable(
          _$CanonicalizationMethodEnumMap, json['xmlSignatureC14nMethod']),
    );

Map<String, dynamic> _$SAMLv2LogoutToJson(SAMLv2Logout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('behavior', _$SAMLLogoutBehaviorEnumMap[instance.behavior]);
  writeNotNull('defaultVerificationKeyId', instance.defaultVerificationKeyId);
  writeNotNull('keyId', instance.keyId);
  writeNotNull('requireSignedRequests', instance.requireSignedRequests);
  writeNotNull('singleLogout', instance.singleLogout);
  writeNotNull('xmlSignatureC14nMethod',
      _$CanonicalizationMethodEnumMap[instance.xmlSignatureC14nMethod]);
  return val;
}

const _$SAMLLogoutBehaviorEnumMap = {
  SAMLLogoutBehavior.AllParticipants: 'AllParticipants',
  SAMLLogoutBehavior.OnlyOriginator: 'OnlyOriginator',
};

SAMLv2SingleLogout _$SAMLv2SingleLogoutFromJson(Map<String, dynamic> json) =>
    SAMLv2SingleLogout(
      keyId: json['keyId'] as String?,
      url: json['url'] as String?,
      xmlSignatureC14nMethod: _$enumDecodeNullable(
          _$CanonicalizationMethodEnumMap, json['xmlSignatureC14nMethod']),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$SAMLv2SingleLogoutToJson(SAMLv2SingleLogout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('keyId', instance.keyId);
  writeNotNull('url', instance.url);
  writeNotNull('xmlSignatureC14nMethod',
      _$CanonicalizationMethodEnumMap[instance.xmlSignatureC14nMethod]);
  return val;
}

SearchRequest _$SearchRequestFromJson(Map<String, dynamic> json) =>
    SearchRequest(
      search: json['search'] == null
          ? null
          : UserSearchCriteria.fromJson(json['search'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchRequestToJson(SearchRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('search', instance.search);
  return val;
}

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      total: json['total'] as num?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('users', instance.users);
  return val;
}

SecretResponse _$SecretResponseFromJson(Map<String, dynamic> json) =>
    SecretResponse(
      secret: json['secret'] as String?,
      secretBase32Encoded: json['secretBase32Encoded'] as String?,
    );

Map<String, dynamic> _$SecretResponseToJson(SecretResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('secret', instance.secret);
  writeNotNull('secretBase32Encoded', instance.secretBase32Encoded);
  return val;
}

SecureGeneratorConfiguration _$SecureGeneratorConfigurationFromJson(
        Map<String, dynamic> json) =>
    SecureGeneratorConfiguration(
      length: json['length'] as num?,
      type: _$enumDecodeNullable(_$SecureGeneratorTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$SecureGeneratorConfigurationToJson(
    SecureGeneratorConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('length', instance.length);
  writeNotNull('type', _$SecureGeneratorTypeEnumMap[instance.type]);
  return val;
}

const _$SecureGeneratorTypeEnumMap = {
  SecureGeneratorType.randomDigits: 'randomDigits',
  SecureGeneratorType.randomBytes: 'randomBytes',
  SecureGeneratorType.randomAlpha: 'randomAlpha',
  SecureGeneratorType.randomAlphaNumeric: 'randomAlphaNumeric',
};

SecureIdentity _$SecureIdentityFromJson(Map<String, dynamic> json) =>
    SecureIdentity(
      breachedPasswordLastCheckedInstant:
          json['breachedPasswordLastCheckedInstant'] as num?,
      breachedPasswordStatus: _$enumDecodeNullable(
          _$BreachedPasswordStatusEnumMap, json['breachedPasswordStatus']),
      connectorId: json['connectorId'] as String?,
      encryptionScheme: json['encryptionScheme'] as String?,
      factor: json['factor'] as num?,
      id: json['id'] as String?,
      lastLoginInstant: json['lastLoginInstant'] as num?,
      password: json['password'] as String?,
      passwordChangeReason: _$enumDecodeNullable(
          _$ChangePasswordReasonEnumMap, json['passwordChangeReason']),
      passwordChangeRequired: json['passwordChangeRequired'] as bool?,
      passwordLastUpdateInstant: json['passwordLastUpdateInstant'] as num?,
      salt: json['salt'] as String?,
      uniqueUsername: json['uniqueUsername'] as String?,
      username: json['username'] as String?,
      usernameStatus:
          _$enumDecodeNullable(_$ContentStatusEnumMap, json['usernameStatus']),
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$SecureIdentityToJson(SecureIdentity instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('breachedPasswordLastCheckedInstant',
      instance.breachedPasswordLastCheckedInstant);
  writeNotNull('breachedPasswordStatus',
      _$BreachedPasswordStatusEnumMap[instance.breachedPasswordStatus]);
  writeNotNull('connectorId', instance.connectorId);
  writeNotNull('encryptionScheme', instance.encryptionScheme);
  writeNotNull('factor', instance.factor);
  writeNotNull('id', instance.id);
  writeNotNull('lastLoginInstant', instance.lastLoginInstant);
  writeNotNull('password', instance.password);
  writeNotNull('passwordChangeReason',
      _$ChangePasswordReasonEnumMap[instance.passwordChangeReason]);
  writeNotNull('passwordChangeRequired', instance.passwordChangeRequired);
  writeNotNull('passwordLastUpdateInstant', instance.passwordLastUpdateInstant);
  writeNotNull('salt', instance.salt);
  writeNotNull('uniqueUsername', instance.uniqueUsername);
  writeNotNull('username', instance.username);
  writeNotNull(
      'usernameStatus', _$ContentStatusEnumMap[instance.usernameStatus]);
  writeNotNull('verified', instance.verified);
  return val;
}

const _$BreachedPasswordStatusEnumMap = {
  BreachedPasswordStatus.None: 'None',
  BreachedPasswordStatus.ExactMatch: 'ExactMatch',
  BreachedPasswordStatus.SubAddressMatch: 'SubAddressMatch',
  BreachedPasswordStatus.PasswordOnly: 'PasswordOnly',
  BreachedPasswordStatus.CommonPassword: 'CommonPassword',
};

const _$ContentStatusEnumMap = {
  ContentStatus.ACTIVE: 'ACTIVE',
  ContentStatus.PENDING: 'PENDING',
  ContentStatus.REJECTED: 'REJECTED',
};

SendRequest _$SendRequestFromJson(Map<String, dynamic> json) => SendRequest(
      applicationId: json['applicationId'] as String?,
      bccAddresses: (json['bccAddresses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ccAddresses: (json['ccAddresses'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preferredLanguages: (json['preferredLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      requestData: json['requestData'] as Map<String, dynamic>?,
      toAddresses: (json['toAddresses'] as List<dynamic>?)
          ?.map((e) => EmailAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      userIds:
          (json['userIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SendRequestToJson(SendRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('bccAddresses', instance.bccAddresses);
  writeNotNull('ccAddresses', instance.ccAddresses);
  writeNotNull('preferredLanguages', instance.preferredLanguages);
  writeNotNull('requestData', instance.requestData);
  writeNotNull('toAddresses', instance.toAddresses);
  writeNotNull('userIds', instance.userIds);
  return val;
}

SendResponse _$SendResponseFromJson(Map<String, dynamic> json) => SendResponse(
      anonymousResults:
          (json['anonymousResults'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, EmailTemplateErrors.fromJson(e as Map<String, dynamic>)),
      ),
      results: (json['results'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, EmailTemplateErrors.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$SendResponseToJson(SendResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('anonymousResults', instance.anonymousResults);
  writeNotNull('results', instance.results);
  return val;
}

SMSMessage _$SMSMessageFromJson(Map<String, dynamic> json) => SMSMessage(
      phoneNumber: json['phoneNumber'] as String?,
      textMessage: json['textMessage'] as String?,
    );

Map<String, dynamic> _$SMSMessageToJson(SMSMessage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('textMessage', instance.textMessage);
  return val;
}

SMSMessageTemplate _$SMSMessageTemplateFromJson(Map<String, dynamic> json) =>
    SMSMessageTemplate(
      defaultTemplate: json['defaultTemplate'] as String?,
      localizedTemplates:
          (json['localizedTemplates'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    )
      ..data = json['data'] as Map<String, dynamic>?
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..name = json['name'] as String?
      ..type = _$enumDecodeNullable(_$MessageTypeEnumMap, json['type']);

Map<String, dynamic> _$SMSMessageTemplateToJson(SMSMessageTemplate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$MessageTypeEnumMap[instance.type]);
  writeNotNull('defaultTemplate', instance.defaultTemplate);
  writeNotNull('localizedTemplates', instance.localizedTemplates);
  return val;
}

SonyPSNApplicationConfiguration _$SonyPSNApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    SonyPSNApplicationConfiguration(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$SonyPSNApplicationConfigurationToJson(
    SonyPSNApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('scope', instance.scope);
  return val;
}

SonyPSNIdentityProvider _$SonyPSNIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    SonyPSNIdentityProvider(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            SonyPSNApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$SonyPSNIdentityProviderToJson(
    SonyPSNIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('scope', instance.scope);
  return val;
}

SortField _$SortFieldFromJson(Map<String, dynamic> json) => SortField(
      missing: json['missing'] as String?,
      name: json['name'] as String?,
      order: _$enumDecodeNullable(_$SortEnumMap, json['order']),
    );

Map<String, dynamic> _$SortFieldToJson(SortField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('missing', instance.missing);
  writeNotNull('name', instance.name);
  writeNotNull('order', _$SortEnumMap[instance.order]);
  return val;
}

const _$SortEnumMap = {
  Sort.asc: 'asc',
  Sort.desc: 'desc',
};

SteamApplicationConfiguration _$SteamApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    SteamApplicationConfiguration(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      scope: json['scope'] as String?,
      webAPIKey: json['webAPIKey'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$SteamApplicationConfigurationToJson(
    SteamApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('scope', instance.scope);
  writeNotNull('webAPIKey', instance.webAPIKey);
  return val;
}

SteamIdentityProvider _$SteamIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    SteamIdentityProvider(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      scope: json['scope'] as String?,
      webAPIKey: json['webAPIKey'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            SteamApplicationConfiguration.fromJson(e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$SteamIdentityProviderToJson(
    SteamIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('scope', instance.scope);
  writeNotNull('webAPIKey', instance.webAPIKey);
  return val;
}

SupportsPostBindings _$SupportsPostBindingsFromJson(
        Map<String, dynamic> json) =>
    SupportsPostBindings();

Map<String, dynamic> _$SupportsPostBindingsToJson(
        SupportsPostBindings instance) =>
    <String, dynamic>{};

SystemConfiguration _$SystemConfigurationFromJson(Map<String, dynamic> json) =>
    SystemConfiguration(
      auditLogConfiguration: json['auditLogConfiguration'] == null
          ? null
          : AuditLogConfiguration.fromJson(
              json['auditLogConfiguration'] as Map<String, dynamic>),
      corsConfiguration: json['corsConfiguration'] == null
          ? null
          : CORSConfiguration.fromJson(
              json['corsConfiguration'] as Map<String, dynamic>),
      data: json['data'] as Map<String, dynamic>?,
      eventLogConfiguration: json['eventLogConfiguration'] == null
          ? null
          : EventLogConfiguration.fromJson(
              json['eventLogConfiguration'] as Map<String, dynamic>),
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      loginRecordConfiguration: json['loginRecordConfiguration'] == null
          ? null
          : LoginRecordConfiguration.fromJson(
              json['loginRecordConfiguration'] as Map<String, dynamic>),
      reportTimezone: json['reportTimezone'] as String?,
      uiConfiguration: json['uiConfiguration'] == null
          ? null
          : UIConfiguration.fromJson(
              json['uiConfiguration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemConfigurationToJson(SystemConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auditLogConfiguration', instance.auditLogConfiguration);
  writeNotNull('corsConfiguration', instance.corsConfiguration);
  writeNotNull('data', instance.data);
  writeNotNull('eventLogConfiguration', instance.eventLogConfiguration);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('loginRecordConfiguration', instance.loginRecordConfiguration);
  writeNotNull('reportTimezone', instance.reportTimezone);
  writeNotNull('uiConfiguration', instance.uiConfiguration);
  return val;
}

SystemConfigurationRequest _$SystemConfigurationRequestFromJson(
        Map<String, dynamic> json) =>
    SystemConfigurationRequest(
      systemConfiguration: json['systemConfiguration'] == null
          ? null
          : SystemConfiguration.fromJson(
              json['systemConfiguration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemConfigurationRequestToJson(
    SystemConfigurationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('systemConfiguration', instance.systemConfiguration);
  return val;
}

SystemConfigurationResponse _$SystemConfigurationResponseFromJson(
        Map<String, dynamic> json) =>
    SystemConfigurationResponse(
      systemConfiguration: json['systemConfiguration'] == null
          ? null
          : SystemConfiguration.fromJson(
              json['systemConfiguration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemConfigurationResponseToJson(
    SystemConfigurationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('systemConfiguration', instance.systemConfiguration);
  return val;
}

SystemLogsExportRequest _$SystemLogsExportRequestFromJson(
        Map<String, dynamic> json) =>
    SystemLogsExportRequest(
      lastNBytes: json['lastNBytes'] as num?,
    )
      ..dateTimeSecondsFormat = json['dateTimeSecondsFormat'] as String?
      ..zoneId = json['zoneId'] as String?;

Map<String, dynamic> _$SystemLogsExportRequestToJson(
    SystemLogsExportRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dateTimeSecondsFormat', instance.dateTimeSecondsFormat);
  writeNotNull('zoneId', instance.zoneId);
  writeNotNull('lastNBytes', instance.lastNBytes);
  return val;
}

Templates _$TemplatesFromJson(Map<String, dynamic> json) => Templates(
      accountEdit: json['accountEdit'] as String?,
      accountIndex: json['accountIndex'] as String?,
      accountTwoFactorDisable: json['accountTwoFactorDisable'] as String?,
      accountTwoFactorEnable: json['accountTwoFactorEnable'] as String?,
      accountTwoFactorIndex: json['accountTwoFactorIndex'] as String?,
      accountWebAuthnAdd: json['accountWebAuthnAdd'] as String?,
      accountWebAuthnDelete: json['accountWebAuthnDelete'] as String?,
      accountWebAuthnIndex: json['accountWebAuthnIndex'] as String?,
      emailComplete: json['emailComplete'] as String?,
      emailSend: json['emailSend'] as String?,
      emailSent: json['emailSent'] as String?,
      emailVerificationRequired: json['emailVerificationRequired'] as String?,
      emailVerify: json['emailVerify'] as String?,
      helpers: json['helpers'] as String?,
      index: json['index'] as String?,
      oauth2Authorize: json['oauth2Authorize'] as String?,
      oauth2AuthorizedNotRegistered:
          json['oauth2AuthorizedNotRegistered'] as String?,
      oauth2ChildRegistrationNotAllowed:
          json['oauth2ChildRegistrationNotAllowed'] as String?,
      oauth2ChildRegistrationNotAllowedComplete:
          json['oauth2ChildRegistrationNotAllowedComplete'] as String?,
      oauth2CompleteRegistration: json['oauth2CompleteRegistration'] as String?,
      oauth2Device: json['oauth2Device'] as String?,
      oauth2DeviceComplete: json['oauth2DeviceComplete'] as String?,
      oauth2Error: json['oauth2Error'] as String?,
      oauth2Logout: json['oauth2Logout'] as String?,
      oauth2Passwordless: json['oauth2Passwordless'] as String?,
      oauth2Register: json['oauth2Register'] as String?,
      oauth2StartIdPLink: json['oauth2StartIdPLink'] as String?,
      oauth2TwoFactor: json['oauth2TwoFactor'] as String?,
      oauth2TwoFactorEnable: json['oauth2TwoFactorEnable'] as String?,
      oauth2TwoFactorEnableComplete:
          json['oauth2TwoFactorEnableComplete'] as String?,
      oauth2TwoFactorMethods: json['oauth2TwoFactorMethods'] as String?,
      oauth2Wait: json['oauth2Wait'] as String?,
      oauth2WebAuthn: json['oauth2WebAuthn'] as String?,
      oauth2WebAuthnReauth: json['oauth2WebAuthnReauth'] as String?,
      oauth2WebAuthnReauthEnable: json['oauth2WebAuthnReauthEnable'] as String?,
      passwordChange: json['passwordChange'] as String?,
      passwordComplete: json['passwordComplete'] as String?,
      passwordForgot: json['passwordForgot'] as String?,
      passwordSent: json['passwordSent'] as String?,
      registrationComplete: json['registrationComplete'] as String?,
      registrationSend: json['registrationSend'] as String?,
      registrationSent: json['registrationSent'] as String?,
      registrationVerificationRequired:
          json['registrationVerificationRequired'] as String?,
      registrationVerify: json['registrationVerify'] as String?,
      samlv2Logout: json['samlv2Logout'] as String?,
      unauthorized: json['unauthorized'] as String?,
    );

Map<String, dynamic> _$TemplatesToJson(Templates instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountEdit', instance.accountEdit);
  writeNotNull('accountIndex', instance.accountIndex);
  writeNotNull('accountTwoFactorDisable', instance.accountTwoFactorDisable);
  writeNotNull('accountTwoFactorEnable', instance.accountTwoFactorEnable);
  writeNotNull('accountTwoFactorIndex', instance.accountTwoFactorIndex);
  writeNotNull('accountWebAuthnAdd', instance.accountWebAuthnAdd);
  writeNotNull('accountWebAuthnDelete', instance.accountWebAuthnDelete);
  writeNotNull('accountWebAuthnIndex', instance.accountWebAuthnIndex);
  writeNotNull('emailComplete', instance.emailComplete);
  writeNotNull('emailSend', instance.emailSend);
  writeNotNull('emailSent', instance.emailSent);
  writeNotNull('emailVerificationRequired', instance.emailVerificationRequired);
  writeNotNull('emailVerify', instance.emailVerify);
  writeNotNull('helpers', instance.helpers);
  writeNotNull('index', instance.index);
  writeNotNull('oauth2Authorize', instance.oauth2Authorize);
  writeNotNull(
      'oauth2AuthorizedNotRegistered', instance.oauth2AuthorizedNotRegistered);
  writeNotNull('oauth2ChildRegistrationNotAllowed',
      instance.oauth2ChildRegistrationNotAllowed);
  writeNotNull('oauth2ChildRegistrationNotAllowedComplete',
      instance.oauth2ChildRegistrationNotAllowedComplete);
  writeNotNull(
      'oauth2CompleteRegistration', instance.oauth2CompleteRegistration);
  writeNotNull('oauth2Device', instance.oauth2Device);
  writeNotNull('oauth2DeviceComplete', instance.oauth2DeviceComplete);
  writeNotNull('oauth2Error', instance.oauth2Error);
  writeNotNull('oauth2Logout', instance.oauth2Logout);
  writeNotNull('oauth2Passwordless', instance.oauth2Passwordless);
  writeNotNull('oauth2Register', instance.oauth2Register);
  writeNotNull('oauth2StartIdPLink', instance.oauth2StartIdPLink);
  writeNotNull('oauth2TwoFactor', instance.oauth2TwoFactor);
  writeNotNull('oauth2TwoFactorEnable', instance.oauth2TwoFactorEnable);
  writeNotNull(
      'oauth2TwoFactorEnableComplete', instance.oauth2TwoFactorEnableComplete);
  writeNotNull('oauth2TwoFactorMethods', instance.oauth2TwoFactorMethods);
  writeNotNull('oauth2Wait', instance.oauth2Wait);
  writeNotNull('oauth2WebAuthn', instance.oauth2WebAuthn);
  writeNotNull('oauth2WebAuthnReauth', instance.oauth2WebAuthnReauth);
  writeNotNull(
      'oauth2WebAuthnReauthEnable', instance.oauth2WebAuthnReauthEnable);
  writeNotNull('passwordChange', instance.passwordChange);
  writeNotNull('passwordComplete', instance.passwordComplete);
  writeNotNull('passwordForgot', instance.passwordForgot);
  writeNotNull('passwordSent', instance.passwordSent);
  writeNotNull('registrationComplete', instance.registrationComplete);
  writeNotNull('registrationSend', instance.registrationSend);
  writeNotNull('registrationSent', instance.registrationSent);
  writeNotNull('registrationVerificationRequired',
      instance.registrationVerificationRequired);
  writeNotNull('registrationVerify', instance.registrationVerify);
  writeNotNull('samlv2Logout', instance.samlv2Logout);
  writeNotNull('unauthorized', instance.unauthorized);
  return val;
}

Tenant _$TenantFromJson(Map<String, dynamic> json) => Tenant(
      accessControlConfiguration: json['accessControlConfiguration'] == null
          ? null
          : TenantAccessControlConfiguration.fromJson(
              json['accessControlConfiguration'] as Map<String, dynamic>),
      captchaConfiguration: json['captchaConfiguration'] == null
          ? null
          : TenantCaptchaConfiguration.fromJson(
              json['captchaConfiguration'] as Map<String, dynamic>),
      configured: json['configured'] as bool?,
      connectorPolicies: (json['connectorPolicies'] as List<dynamic>?)
          ?.map((e) => ConnectorPolicy.fromJson(e as Map<String, dynamic>))
          .toList(),
      data: json['data'] as Map<String, dynamic>?,
      emailConfiguration: json['emailConfiguration'] == null
          ? null
          : EmailConfiguration.fromJson(
              json['emailConfiguration'] as Map<String, dynamic>),
      eventConfiguration: json['eventConfiguration'] == null
          ? null
          : EventConfiguration.fromJson(
              json['eventConfiguration'] as Map<String, dynamic>),
      externalIdentifierConfiguration:
          json['externalIdentifierConfiguration'] == null
              ? null
              : ExternalIdentifierConfiguration.fromJson(
                  json['externalIdentifierConfiguration']
                      as Map<String, dynamic>),
      failedAuthenticationConfiguration:
          json['failedAuthenticationConfiguration'] == null
              ? null
              : FailedAuthenticationConfiguration.fromJson(
                  json['failedAuthenticationConfiguration']
                      as Map<String, dynamic>),
      familyConfiguration: json['familyConfiguration'] == null
          ? null
          : FamilyConfiguration.fromJson(
              json['familyConfiguration'] as Map<String, dynamic>),
      formConfiguration: json['formConfiguration'] == null
          ? null
          : TenantFormConfiguration.fromJson(
              json['formConfiguration'] as Map<String, dynamic>),
      httpSessionMaxInactiveInterval:
          json['httpSessionMaxInactiveInterval'] as num?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      issuer: json['issuer'] as String?,
      jwtConfiguration: json['jwtConfiguration'] == null
          ? null
          : JWTConfiguration.fromJson(
              json['jwtConfiguration'] as Map<String, dynamic>),
      lambdaConfiguration: json['lambdaConfiguration'] == null
          ? null
          : TenantLambdaConfiguration.fromJson(
              json['lambdaConfiguration'] as Map<String, dynamic>),
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      loginConfiguration: json['loginConfiguration'] == null
          ? null
          : TenantLoginConfiguration.fromJson(
              json['loginConfiguration'] as Map<String, dynamic>),
      logoutURL: json['logoutURL'] as String?,
      maximumPasswordAge: json['maximumPasswordAge'] == null
          ? null
          : MaximumPasswordAge.fromJson(
              json['maximumPasswordAge'] as Map<String, dynamic>),
      minimumPasswordAge: json['minimumPasswordAge'] == null
          ? null
          : MinimumPasswordAge.fromJson(
              json['minimumPasswordAge'] as Map<String, dynamic>),
      multiFactorConfiguration: json['multiFactorConfiguration'] == null
          ? null
          : TenantMultiFactorConfiguration.fromJson(
              json['multiFactorConfiguration'] as Map<String, dynamic>),
      name: json['name'] as String?,
      oauthConfiguration: json['oauthConfiguration'] == null
          ? null
          : TenantOAuth2Configuration.fromJson(
              json['oauthConfiguration'] as Map<String, dynamic>),
      passwordEncryptionConfiguration:
          json['passwordEncryptionConfiguration'] == null
              ? null
              : PasswordEncryptionConfiguration.fromJson(
                  json['passwordEncryptionConfiguration']
                      as Map<String, dynamic>),
      passwordValidationRules: json['passwordValidationRules'] == null
          ? null
          : PasswordValidationRules.fromJson(
              json['passwordValidationRules'] as Map<String, dynamic>),
      rateLimitConfiguration: json['rateLimitConfiguration'] == null
          ? null
          : TenantRateLimitConfiguration.fromJson(
              json['rateLimitConfiguration'] as Map<String, dynamic>),
      registrationConfiguration: json['registrationConfiguration'] == null
          ? null
          : TenantRegistrationConfiguration.fromJson(
              json['registrationConfiguration'] as Map<String, dynamic>),
      scimServerConfiguration: json['scimServerConfiguration'] == null
          ? null
          : TenantSCIMServerConfiguration.fromJson(
              json['scimServerConfiguration'] as Map<String, dynamic>),
      ssoConfiguration: json['ssoConfiguration'] == null
          ? null
          : TenantSSOConfiguration.fromJson(
              json['ssoConfiguration'] as Map<String, dynamic>),
      state: _$enumDecodeNullable(_$ObjectStateEnumMap, json['state']),
      themeId: json['themeId'] as String?,
      userDeletePolicy: json['userDeletePolicy'] == null
          ? null
          : TenantUserDeletePolicy.fromJson(
              json['userDeletePolicy'] as Map<String, dynamic>),
      usernameConfiguration: json['usernameConfiguration'] == null
          ? null
          : TenantUsernameConfiguration.fromJson(
              json['usernameConfiguration'] as Map<String, dynamic>),
      webAuthnConfiguration: json['webAuthnConfiguration'] == null
          ? null
          : TenantWebAuthnConfiguration.fromJson(
              json['webAuthnConfiguration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenantToJson(Tenant instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'accessControlConfiguration', instance.accessControlConfiguration);
  writeNotNull('captchaConfiguration', instance.captchaConfiguration);
  writeNotNull('configured', instance.configured);
  writeNotNull('connectorPolicies', instance.connectorPolicies);
  writeNotNull('data', instance.data);
  writeNotNull('emailConfiguration', instance.emailConfiguration);
  writeNotNull('eventConfiguration', instance.eventConfiguration);
  writeNotNull('externalIdentifierConfiguration',
      instance.externalIdentifierConfiguration);
  writeNotNull('failedAuthenticationConfiguration',
      instance.failedAuthenticationConfiguration);
  writeNotNull('familyConfiguration', instance.familyConfiguration);
  writeNotNull('formConfiguration', instance.formConfiguration);
  writeNotNull('httpSessionMaxInactiveInterval',
      instance.httpSessionMaxInactiveInterval);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('issuer', instance.issuer);
  writeNotNull('jwtConfiguration', instance.jwtConfiguration);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('loginConfiguration', instance.loginConfiguration);
  writeNotNull('logoutURL', instance.logoutURL);
  writeNotNull('maximumPasswordAge', instance.maximumPasswordAge);
  writeNotNull('minimumPasswordAge', instance.minimumPasswordAge);
  writeNotNull('multiFactorConfiguration', instance.multiFactorConfiguration);
  writeNotNull('name', instance.name);
  writeNotNull('oauthConfiguration', instance.oauthConfiguration);
  writeNotNull('passwordEncryptionConfiguration',
      instance.passwordEncryptionConfiguration);
  writeNotNull('passwordValidationRules', instance.passwordValidationRules);
  writeNotNull('rateLimitConfiguration', instance.rateLimitConfiguration);
  writeNotNull('registrationConfiguration', instance.registrationConfiguration);
  writeNotNull('scimServerConfiguration', instance.scimServerConfiguration);
  writeNotNull('ssoConfiguration', instance.ssoConfiguration);
  writeNotNull('state', _$ObjectStateEnumMap[instance.state]);
  writeNotNull('themeId', instance.themeId);
  writeNotNull('userDeletePolicy', instance.userDeletePolicy);
  writeNotNull('usernameConfiguration', instance.usernameConfiguration);
  writeNotNull('webAuthnConfiguration', instance.webAuthnConfiguration);
  return val;
}

Tenantable _$TenantableFromJson(Map<String, dynamic> json) => Tenantable();

Map<String, dynamic> _$TenantableToJson(Tenantable instance) =>
    <String, dynamic>{};

TenantAccessControlConfiguration _$TenantAccessControlConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantAccessControlConfiguration(
      uiIPAccessControlListId: json['uiIPAccessControlListId'] as String?,
    );

Map<String, dynamic> _$TenantAccessControlConfigurationToJson(
    TenantAccessControlConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('uiIPAccessControlListId', instance.uiIPAccessControlListId);
  return val;
}

TenantCaptchaConfiguration _$TenantCaptchaConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantCaptchaConfiguration(
      captchaMethod:
          _$enumDecodeNullable(_$CaptchaMethodEnumMap, json['captchaMethod']),
      secretKey: json['secretKey'] as String?,
      siteKey: json['siteKey'] as String?,
      threshold: json['threshold'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$TenantCaptchaConfigurationToJson(
    TenantCaptchaConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('captchaMethod', _$CaptchaMethodEnumMap[instance.captchaMethod]);
  writeNotNull('secretKey', instance.secretKey);
  writeNotNull('siteKey', instance.siteKey);
  writeNotNull('threshold', instance.threshold);
  return val;
}

const _$CaptchaMethodEnumMap = {
  CaptchaMethod.GoogleRecaptchaV2: 'GoogleRecaptchaV2',
  CaptchaMethod.GoogleRecaptchaV3: 'GoogleRecaptchaV3',
  CaptchaMethod.HCaptcha: 'HCaptcha',
  CaptchaMethod.HCaptchaEnterprise: 'HCaptchaEnterprise',
};

TenantDeleteRequest _$TenantDeleteRequestFromJson(Map<String, dynamic> json) =>
    TenantDeleteRequest(
      async: json['async'] as bool?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$TenantDeleteRequestToJson(TenantDeleteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('async', instance.async);
  return val;
}

TenantFormConfiguration _$TenantFormConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantFormConfiguration(
      adminUserFormId: json['adminUserFormId'] as String?,
    );

Map<String, dynamic> _$TenantFormConfigurationToJson(
    TenantFormConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('adminUserFormId', instance.adminUserFormId);
  return val;
}

TenantLambdaConfiguration _$TenantLambdaConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantLambdaConfiguration(
      scimEnterpriseUserRequestConverterId:
          json['scimEnterpriseUserRequestConverterId'] as String?,
      scimEnterpriseUserResponseConverterId:
          json['scimEnterpriseUserResponseConverterId'] as String?,
      scimGroupRequestConverterId:
          json['scimGroupRequestConverterId'] as String?,
      scimGroupResponseConverterId:
          json['scimGroupResponseConverterId'] as String?,
      scimUserRequestConverterId: json['scimUserRequestConverterId'] as String?,
      scimUserResponseConverterId:
          json['scimUserResponseConverterId'] as String?,
    );

Map<String, dynamic> _$TenantLambdaConfigurationToJson(
    TenantLambdaConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('scimEnterpriseUserRequestConverterId',
      instance.scimEnterpriseUserRequestConverterId);
  writeNotNull('scimEnterpriseUserResponseConverterId',
      instance.scimEnterpriseUserResponseConverterId);
  writeNotNull(
      'scimGroupRequestConverterId', instance.scimGroupRequestConverterId);
  writeNotNull(
      'scimGroupResponseConverterId', instance.scimGroupResponseConverterId);
  writeNotNull(
      'scimUserRequestConverterId', instance.scimUserRequestConverterId);
  writeNotNull(
      'scimUserResponseConverterId', instance.scimUserResponseConverterId);
  return val;
}

TenantLoginConfiguration _$TenantLoginConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantLoginConfiguration(
      requireAuthentication: json['requireAuthentication'] as bool?,
    );

Map<String, dynamic> _$TenantLoginConfigurationToJson(
    TenantLoginConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('requireAuthentication', instance.requireAuthentication);
  return val;
}

TenantMultiFactorConfiguration _$TenantMultiFactorConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantMultiFactorConfiguration(
      authenticator: json['authenticator'] == null
          ? null
          : MultiFactorAuthenticatorMethod.fromJson(
              json['authenticator'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : MultiFactorEmailMethod.fromJson(
              json['email'] as Map<String, dynamic>),
      loginPolicy: _$enumDecodeNullable(
          _$MultiFactorLoginPolicyEnumMap, json['loginPolicy']),
      sms: json['sms'] == null
          ? null
          : MultiFactorSMSMethod.fromJson(json['sms'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenantMultiFactorConfigurationToJson(
    TenantMultiFactorConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authenticator', instance.authenticator);
  writeNotNull('email', instance.email);
  writeNotNull(
      'loginPolicy', _$MultiFactorLoginPolicyEnumMap[instance.loginPolicy]);
  writeNotNull('sms', instance.sms);
  return val;
}

TenantOAuth2Configuration _$TenantOAuth2ConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantOAuth2Configuration(
      clientCredentialsAccessTokenPopulateLambdaId:
          json['clientCredentialsAccessTokenPopulateLambdaId'] as String?,
    );

Map<String, dynamic> _$TenantOAuth2ConfigurationToJson(
    TenantOAuth2Configuration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientCredentialsAccessTokenPopulateLambdaId',
      instance.clientCredentialsAccessTokenPopulateLambdaId);
  return val;
}

TenantRateLimitConfiguration _$TenantRateLimitConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantRateLimitConfiguration(
      failedLogin: json['failedLogin'] == null
          ? null
          : RateLimitedRequestConfiguration.fromJson(
              json['failedLogin'] as Map<String, dynamic>),
      forgotPassword: json['forgotPassword'] == null
          ? null
          : RateLimitedRequestConfiguration.fromJson(
              json['forgotPassword'] as Map<String, dynamic>),
      sendEmailVerification: json['sendEmailVerification'] == null
          ? null
          : RateLimitedRequestConfiguration.fromJson(
              json['sendEmailVerification'] as Map<String, dynamic>),
      sendPasswordless: json['sendPasswordless'] == null
          ? null
          : RateLimitedRequestConfiguration.fromJson(
              json['sendPasswordless'] as Map<String, dynamic>),
      sendRegistrationVerification: json['sendRegistrationVerification'] == null
          ? null
          : RateLimitedRequestConfiguration.fromJson(
              json['sendRegistrationVerification'] as Map<String, dynamic>),
      sendTwoFactor: json['sendTwoFactor'] == null
          ? null
          : RateLimitedRequestConfiguration.fromJson(
              json['sendTwoFactor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenantRateLimitConfigurationToJson(
    TenantRateLimitConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('failedLogin', instance.failedLogin);
  writeNotNull('forgotPassword', instance.forgotPassword);
  writeNotNull('sendEmailVerification', instance.sendEmailVerification);
  writeNotNull('sendPasswordless', instance.sendPasswordless);
  writeNotNull(
      'sendRegistrationVerification', instance.sendRegistrationVerification);
  writeNotNull('sendTwoFactor', instance.sendTwoFactor);
  return val;
}

TenantRegistrationConfiguration _$TenantRegistrationConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantRegistrationConfiguration(
      blockedDomains: (json['blockedDomains'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$TenantRegistrationConfigurationToJson(
    TenantRegistrationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blockedDomains', instance.blockedDomains?.toList());
  return val;
}

TenantRequest _$TenantRequestFromJson(Map<String, dynamic> json) =>
    TenantRequest(
      sourceTenantId: json['sourceTenantId'] as String?,
      tenant: json['tenant'] == null
          ? null
          : Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      webhookIds: (json['webhookIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$TenantRequestToJson(TenantRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('sourceTenantId', instance.sourceTenantId);
  writeNotNull('tenant', instance.tenant);
  writeNotNull('webhookIds', instance.webhookIds);
  return val;
}

TenantResponse _$TenantResponseFromJson(Map<String, dynamic> json) =>
    TenantResponse(
      tenant: json['tenant'] == null
          ? null
          : Tenant.fromJson(json['tenant'] as Map<String, dynamic>),
      tenants: (json['tenants'] as List<dynamic>?)
          ?.map((e) => Tenant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TenantResponseToJson(TenantResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tenant', instance.tenant);
  writeNotNull('tenants', instance.tenants);
  return val;
}

TenantSCIMServerConfiguration _$TenantSCIMServerConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantSCIMServerConfiguration(
      clientEntityTypeId: json['clientEntityTypeId'] as String?,
      schemas: json['schemas'] as Map<String, dynamic>?,
      serverEntityTypeId: json['serverEntityTypeId'] as String?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$TenantSCIMServerConfigurationToJson(
    TenantSCIMServerConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('clientEntityTypeId', instance.clientEntityTypeId);
  writeNotNull('schemas', instance.schemas);
  writeNotNull('serverEntityTypeId', instance.serverEntityTypeId);
  return val;
}

TenantSSOConfiguration _$TenantSSOConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantSSOConfiguration(
      deviceTrustTimeToLiveInSeconds:
          json['deviceTrustTimeToLiveInSeconds'] as num?,
    );

Map<String, dynamic> _$TenantSSOConfigurationToJson(
    TenantSSOConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deviceTrustTimeToLiveInSeconds',
      instance.deviceTrustTimeToLiveInSeconds);
  return val;
}

TenantUnverifiedConfiguration _$TenantUnverifiedConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantUnverifiedConfiguration(
      email: _$enumDecodeNullable(_$UnverifiedBehaviorEnumMap, json['email']),
      whenGated: json['whenGated'] == null
          ? null
          : RegistrationUnverifiedOptions.fromJson(
              json['whenGated'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenantUnverifiedConfigurationToJson(
    TenantUnverifiedConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', _$UnverifiedBehaviorEnumMap[instance.email]);
  writeNotNull('whenGated', instance.whenGated);
  return val;
}

TenantUserDeletePolicy _$TenantUserDeletePolicyFromJson(
        Map<String, dynamic> json) =>
    TenantUserDeletePolicy(
      unverified: json['unverified'] == null
          ? null
          : TimeBasedDeletePolicy.fromJson(
              json['unverified'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenantUserDeletePolicyToJson(
    TenantUserDeletePolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unverified', instance.unverified);
  return val;
}

TenantUsernameConfiguration _$TenantUsernameConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantUsernameConfiguration(
      unique: json['unique'] == null
          ? null
          : UniqueUsernameConfiguration.fromJson(
              json['unique'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TenantUsernameConfigurationToJson(
    TenantUsernameConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unique', instance.unique);
  return val;
}

TenantWebAuthnConfiguration _$TenantWebAuthnConfigurationFromJson(
        Map<String, dynamic> json) =>
    TenantWebAuthnConfiguration(
      bootstrapWorkflow: json['bootstrapWorkflow'] == null
          ? null
          : TenantWebAuthnWorkflowConfiguration.fromJson(
              json['bootstrapWorkflow'] as Map<String, dynamic>),
      debug: json['debug'] as bool?,
      reauthenticationWorkflow: json['reauthenticationWorkflow'] == null
          ? null
          : TenantWebAuthnWorkflowConfiguration.fromJson(
              json['reauthenticationWorkflow'] as Map<String, dynamic>),
      relyingPartyId: json['relyingPartyId'] as String?,
      relyingPartyName: json['relyingPartyName'] as String?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$TenantWebAuthnConfigurationToJson(
    TenantWebAuthnConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('bootstrapWorkflow', instance.bootstrapWorkflow);
  writeNotNull('debug', instance.debug);
  writeNotNull('reauthenticationWorkflow', instance.reauthenticationWorkflow);
  writeNotNull('relyingPartyId', instance.relyingPartyId);
  writeNotNull('relyingPartyName', instance.relyingPartyName);
  return val;
}

TenantWebAuthnWorkflowConfiguration
    _$TenantWebAuthnWorkflowConfigurationFromJson(Map<String, dynamic> json) =>
        TenantWebAuthnWorkflowConfiguration(
          authenticatorAttachmentPreference: _$enumDecodeNullable(
              _$AuthenticatorAttachmentPreferenceEnumMap,
              json['authenticatorAttachmentPreference']),
          userVerificationRequirement: _$enumDecodeNullable(
              _$UserVerificationRequirementEnumMap,
              json['userVerificationRequirement']),
        )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$TenantWebAuthnWorkflowConfigurationToJson(
    TenantWebAuthnWorkflowConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull(
      'authenticatorAttachmentPreference',
      _$AuthenticatorAttachmentPreferenceEnumMap[
          instance.authenticatorAttachmentPreference]);
  writeNotNull(
      'userVerificationRequirement',
      _$UserVerificationRequirementEnumMap[
          instance.userVerificationRequirement]);
  return val;
}

const _$AuthenticatorAttachmentPreferenceEnumMap = {
  AuthenticatorAttachmentPreference.any: 'any',
  AuthenticatorAttachmentPreference.platform: 'platform',
  AuthenticatorAttachmentPreference.crossPlatform: 'crossPlatform',
};

TestEvent _$TestEventFromJson(Map<String, dynamic> json) => TestEvent(
      message: json['message'] as String?,
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$TestEventToJson(TestEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('message', instance.message);
  return val;
}

Theme _$ThemeFromJson(Map<String, dynamic> json) => Theme(
      data: json['data'] as Map<String, dynamic>?,
      defaultMessages: json['defaultMessages'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      localizedMessages:
          (json['localizedMessages'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
      stylesheet: json['stylesheet'] as String?,
      templates: json['templates'] == null
          ? null
          : Templates.fromJson(json['templates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThemeToJson(Theme instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('defaultMessages', instance.defaultMessages);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('localizedMessages', instance.localizedMessages);
  writeNotNull('name', instance.name);
  writeNotNull('stylesheet', instance.stylesheet);
  writeNotNull('templates', instance.templates);
  return val;
}

ThemeRequest _$ThemeRequestFromJson(Map<String, dynamic> json) => ThemeRequest(
      sourceThemeId: json['sourceThemeId'] as String?,
      theme: json['theme'] == null
          ? null
          : Theme.fromJson(json['theme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ThemeRequestToJson(ThemeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sourceThemeId', instance.sourceThemeId);
  writeNotNull('theme', instance.theme);
  return val;
}

ThemeResponse _$ThemeResponseFromJson(Map<String, dynamic> json) =>
    ThemeResponse(
      theme: json['theme'] == null
          ? null
          : Theme.fromJson(json['theme'] as Map<String, dynamic>),
      themes: (json['themes'] as List<dynamic>?)
          ?.map((e) => Theme.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ThemeResponseToJson(ThemeResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('theme', instance.theme);
  writeNotNull('themes', instance.themes);
  return val;
}

TimeBasedDeletePolicy _$TimeBasedDeletePolicyFromJson(
        Map<String, dynamic> json) =>
    TimeBasedDeletePolicy(
      numberOfDaysToRetain: json['numberOfDaysToRetain'] as num?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$TimeBasedDeletePolicyToJson(
    TimeBasedDeletePolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('numberOfDaysToRetain', instance.numberOfDaysToRetain);
  return val;
}

Totals _$TotalsFromJson(Map<String, dynamic> json) => Totals(
      logins: json['logins'] as num?,
      registrations: json['registrations'] as num?,
      totalRegistrations: json['totalRegistrations'] as num?,
    );

Map<String, dynamic> _$TotalsToJson(Totals instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('logins', instance.logins);
  writeNotNull('registrations', instance.registrations);
  writeNotNull('totalRegistrations', instance.totalRegistrations);
  return val;
}

TotalsReportResponse _$TotalsReportResponseFromJson(
        Map<String, dynamic> json) =>
    TotalsReportResponse(
      applicationTotals:
          (json['applicationTotals'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Totals.fromJson(e as Map<String, dynamic>)),
      ),
      globalRegistrations: json['globalRegistrations'] as num?,
      totalGlobalRegistrations: json['totalGlobalRegistrations'] as num?,
    );

Map<String, dynamic> _$TotalsReportResponseToJson(
    TotalsReportResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationTotals', instance.applicationTotals);
  writeNotNull('globalRegistrations', instance.globalRegistrations);
  writeNotNull('totalGlobalRegistrations', instance.totalGlobalRegistrations);
  return val;
}

TwilioMessengerConfiguration _$TwilioMessengerConfigurationFromJson(
        Map<String, dynamic> json) =>
    TwilioMessengerConfiguration(
      accountSID: json['accountSID'] as String?,
      authToken: json['authToken'] as String?,
      fromPhoneNumber: json['fromPhoneNumber'] as String?,
      messagingServiceSid: json['messagingServiceSid'] as String?,
      url: json['url'] as String?,
    )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool? ?? false
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..name = json['name'] as String?
      ..transport = json['transport'] as String?
      ..type = _$enumDecodeNullable(_$MessengerTypeEnumMap, json['type']);

Map<String, dynamic> _$TwilioMessengerConfigurationToJson(
    TwilioMessengerConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('name', instance.name);
  writeNotNull('transport', instance.transport);
  writeNotNull('type', _$MessengerTypeEnumMap[instance.type]);
  writeNotNull('accountSID', instance.accountSID);
  writeNotNull('authToken', instance.authToken);
  writeNotNull('fromPhoneNumber', instance.fromPhoneNumber);
  writeNotNull('messagingServiceSid', instance.messagingServiceSid);
  writeNotNull('url', instance.url);
  return val;
}

TwitchApplicationConfiguration _$TwitchApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    TwitchApplicationConfiguration(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$TwitchApplicationConfigurationToJson(
    TwitchApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('scope', instance.scope);
  return val;
}

TwitchIdentityProvider _$TwitchIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    TwitchIdentityProvider(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            TwitchApplicationConfiguration.fromJson(e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$TwitchIdentityProviderToJson(
    TwitchIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('scope', instance.scope);
  return val;
}

TwitterApplicationConfiguration _$TwitterApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    TwitterApplicationConfiguration(
      buttonText: json['buttonText'] as String?,
      consumerKey: json['consumerKey'] as String?,
      consumerSecret: json['consumerSecret'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$TwitterApplicationConfigurationToJson(
    TwitterApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('consumerKey', instance.consumerKey);
  writeNotNull('consumerSecret', instance.consumerSecret);
  return val;
}

TwitterIdentityProvider _$TwitterIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    TwitterIdentityProvider(
      buttonText: json['buttonText'] as String?,
      consumerKey: json['consumerKey'] as String?,
      consumerSecret: json['consumerSecret'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            TwitterApplicationConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$TwitterIdentityProviderToJson(
    TwitterIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('consumerKey', instance.consumerKey);
  writeNotNull('consumerSecret', instance.consumerSecret);
  return val;
}

TwoFactorDisableRequest _$TwoFactorDisableRequestFromJson(
        Map<String, dynamic> json) =>
    TwoFactorDisableRequest(
      applicationId: json['applicationId'] as String?,
      code: json['code'] as String?,
      methodId: json['methodId'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$TwoFactorDisableRequestToJson(
    TwoFactorDisableRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('code', instance.code);
  writeNotNull('methodId', instance.methodId);
  return val;
}

TwoFactorEnableDisableSendRequest _$TwoFactorEnableDisableSendRequestFromJson(
        Map<String, dynamic> json) =>
    TwoFactorEnableDisableSendRequest(
      email: json['email'] as String?,
      method: json['method'] as String?,
      methodId: json['methodId'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
    );

Map<String, dynamic> _$TwoFactorEnableDisableSendRequestToJson(
    TwoFactorEnableDisableSendRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('method', instance.method);
  writeNotNull('methodId', instance.methodId);
  writeNotNull('mobilePhone', instance.mobilePhone);
  return val;
}

TwoFactorLoginRequest _$TwoFactorLoginRequestFromJson(
        Map<String, dynamic> json) =>
    TwoFactorLoginRequest(
      code: json['code'] as String?,
      trustComputer: json['trustComputer'] as bool?,
      twoFactorId: json['twoFactorId'] as String?,
      userId: json['userId'] as String?,
    )
      ..eventInfo = json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>)
      ..applicationId = json['applicationId'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..metaData = json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>)
      ..newDevice = json['newDevice'] as bool?
      ..noJWT = json['noJWT'] as bool?;

Map<String, dynamic> _$TwoFactorLoginRequestToJson(
    TwoFactorLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('newDevice', instance.newDevice);
  writeNotNull('noJWT', instance.noJWT);
  writeNotNull('code', instance.code);
  writeNotNull('trustComputer', instance.trustComputer);
  writeNotNull('twoFactorId', instance.twoFactorId);
  writeNotNull('userId', instance.userId);
  return val;
}

TwoFactorMethod _$TwoFactorMethodFromJson(Map<String, dynamic> json) =>
    TwoFactorMethod(
      authenticator: json['authenticator'] == null
          ? null
          : AuthenticatorConfiguration.fromJson(
              json['authenticator'] as Map<String, dynamic>),
      email: json['email'] as String?,
      id: json['id'] as String?,
      lastUsed: json['lastUsed'] as bool?,
      method: json['method'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
      secret: json['secret'] as String?,
    );

Map<String, dynamic> _$TwoFactorMethodToJson(TwoFactorMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authenticator', instance.authenticator);
  writeNotNull('email', instance.email);
  writeNotNull('id', instance.id);
  writeNotNull('lastUsed', instance.lastUsed);
  writeNotNull('method', instance.method);
  writeNotNull('mobilePhone', instance.mobilePhone);
  writeNotNull('secret', instance.secret);
  return val;
}

TwoFactorRecoveryCodeResponse _$TwoFactorRecoveryCodeResponseFromJson(
        Map<String, dynamic> json) =>
    TwoFactorRecoveryCodeResponse(
      recoveryCodes: (json['recoveryCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TwoFactorRecoveryCodeResponseToJson(
    TwoFactorRecoveryCodeResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('recoveryCodes', instance.recoveryCodes);
  return val;
}

TwoFactorRequest _$TwoFactorRequestFromJson(Map<String, dynamic> json) =>
    TwoFactorRequest(
      applicationId: json['applicationId'] as String?,
      authenticatorId: json['authenticatorId'] as String?,
      code: json['code'] as String?,
      email: json['email'] as String?,
      method: json['method'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
      secret: json['secret'] as String?,
      secretBase32Encoded: json['secretBase32Encoded'] as String?,
      twoFactorId: json['twoFactorId'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$TwoFactorRequestToJson(TwoFactorRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('authenticatorId', instance.authenticatorId);
  writeNotNull('code', instance.code);
  writeNotNull('email', instance.email);
  writeNotNull('method', instance.method);
  writeNotNull('mobilePhone', instance.mobilePhone);
  writeNotNull('secret', instance.secret);
  writeNotNull('secretBase32Encoded', instance.secretBase32Encoded);
  writeNotNull('twoFactorId', instance.twoFactorId);
  return val;
}

TwoFactorResponse _$TwoFactorResponseFromJson(Map<String, dynamic> json) =>
    TwoFactorResponse(
      code: json['code'] as String?,
      recoveryCodes: (json['recoveryCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$TwoFactorResponseToJson(TwoFactorResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('recoveryCodes', instance.recoveryCodes);
  return val;
}

TwoFactorSendRequest _$TwoFactorSendRequestFromJson(
        Map<String, dynamic> json) =>
    TwoFactorSendRequest(
      email: json['email'] as String?,
      method: json['method'] as String?,
      methodId: json['methodId'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$TwoFactorSendRequestToJson(
    TwoFactorSendRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('method', instance.method);
  writeNotNull('methodId', instance.methodId);
  writeNotNull('mobilePhone', instance.mobilePhone);
  writeNotNull('userId', instance.userId);
  return val;
}

TwoFactorStartRequest _$TwoFactorStartRequestFromJson(
        Map<String, dynamic> json) =>
    TwoFactorStartRequest(
      applicationId: json['applicationId'] as String?,
      code: json['code'] as String?,
      loginId: json['loginId'] as String?,
      state: json['state'] as Map<String, dynamic>?,
      trustChallenge: json['trustChallenge'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$TwoFactorStartRequestToJson(
    TwoFactorStartRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('code', instance.code);
  writeNotNull('loginId', instance.loginId);
  writeNotNull('state', instance.state);
  writeNotNull('trustChallenge', instance.trustChallenge);
  writeNotNull('userId', instance.userId);
  return val;
}

TwoFactorStartResponse _$TwoFactorStartResponseFromJson(
        Map<String, dynamic> json) =>
    TwoFactorStartResponse(
      code: json['code'] as String?,
      methods: (json['methods'] as List<dynamic>?)
          ?.map((e) => TwoFactorMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      twoFactorId: json['twoFactorId'] as String?,
    );

Map<String, dynamic> _$TwoFactorStartResponseToJson(
    TwoFactorStartResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('methods', instance.methods);
  writeNotNull('twoFactorId', instance.twoFactorId);
  return val;
}

TwoFactorStatusResponse _$TwoFactorStatusResponseFromJson(
        Map<String, dynamic> json) =>
    TwoFactorStatusResponse(
      trusts: (json['trusts'] as List<dynamic>?)
          ?.map((e) => TwoFactorTrust.fromJson(e as Map<String, dynamic>))
          .toList(),
      twoFactorTrustId: json['twoFactorTrustId'] as String?,
    );

Map<String, dynamic> _$TwoFactorStatusResponseToJson(
    TwoFactorStatusResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('trusts', instance.trusts);
  writeNotNull('twoFactorTrustId', instance.twoFactorTrustId);
  return val;
}

TwoFactorTrust _$TwoFactorTrustFromJson(Map<String, dynamic> json) =>
    TwoFactorTrust(
      applicationId: json['applicationId'] as String?,
      expiration: json['expiration'] as num?,
      startInstant: json['startInstant'] as num?,
    );

Map<String, dynamic> _$TwoFactorTrustToJson(TwoFactorTrust instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('expiration', instance.expiration);
  writeNotNull('startInstant', instance.startInstant);
  return val;
}

UIConfiguration _$UIConfigurationFromJson(Map<String, dynamic> json) =>
    UIConfiguration(
      headerColor: json['headerColor'] as String?,
      logoURL: json['logoURL'] as String?,
      menuFontColor: json['menuFontColor'] as String?,
    );

Map<String, dynamic> _$UIConfigurationToJson(UIConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('headerColor', instance.headerColor);
  writeNotNull('logoURL', instance.logoURL);
  writeNotNull('menuFontColor', instance.menuFontColor);
  return val;
}

UniqueUsernameConfiguration _$UniqueUsernameConfigurationFromJson(
        Map<String, dynamic> json) =>
    UniqueUsernameConfiguration(
      numberOfDigits: json['numberOfDigits'] as num?,
      separator: json['separator'] as String?,
      strategy: _$enumDecodeNullable(
          _$UniqueUsernameStrategyEnumMap, json['strategy']),
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$UniqueUsernameConfigurationToJson(
    UniqueUsernameConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('numberOfDigits', instance.numberOfDigits);
  writeNotNull('separator', instance.separator);
  writeNotNull('strategy', _$UniqueUsernameStrategyEnumMap[instance.strategy]);
  return val;
}

const _$UniqueUsernameStrategyEnumMap = {
  UniqueUsernameStrategy.Always: 'Always',
  UniqueUsernameStrategy.OnCollision: 'OnCollision',
};

User _$UserFromJson(Map<String, dynamic> json) => User(
      active: json['active'] as bool?,
      birthDate: json['birthDate'] as String?,
      cleanSpeakId: json['cleanSpeakId'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      email: json['email'] as String?,
      expiry: json['expiry'] as num?,
      firstName: json['firstName'] as String?,
      fullName: json['fullName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastName: json['lastName'] as String?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      memberships: (json['memberships'] as List<dynamic>?)
          ?.map((e) => GroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      middleName: json['middleName'] as String?,
      mobilePhone: json['mobilePhone'] as String?,
      parentEmail: json['parentEmail'] as String?,
      preferredLanguages: (json['preferredLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      registrations: (json['registrations'] as List<dynamic>?)
          ?.map((e) => UserRegistration.fromJson(e as Map<String, dynamic>))
          .toList(),
      tenantId: json['tenantId'] as String?,
      timezone: json['timezone'] as String?,
      twoFactor: json['twoFactor'] == null
          ? null
          : UserTwoFactorConfiguration.fromJson(
              json['twoFactor'] as Map<String, dynamic>),
    )
      ..breachedPasswordLastCheckedInstant =
          json['breachedPasswordLastCheckedInstant'] as num?
      ..breachedPasswordStatus = _$enumDecodeNullable(
          _$BreachedPasswordStatusEnumMap, json['breachedPasswordStatus'])
      ..connectorId = json['connectorId'] as String?
      ..encryptionScheme = json['encryptionScheme'] as String?
      ..factor = json['factor'] as num?
      ..id = json['id'] as String?
      ..lastLoginInstant = json['lastLoginInstant'] as num?
      ..password = json['password'] as String?
      ..passwordChangeReason = _$enumDecodeNullable(
          _$ChangePasswordReasonEnumMap, json['passwordChangeReason'])
      ..passwordChangeRequired = json['passwordChangeRequired'] as bool?
      ..passwordLastUpdateInstant = json['passwordLastUpdateInstant'] as num?
      ..salt = json['salt'] as String?
      ..uniqueUsername = json['uniqueUsername'] as String?
      ..username = json['username'] as String?
      ..usernameStatus =
          _$enumDecodeNullable(_$ContentStatusEnumMap, json['usernameStatus'])
      ..verified = json['verified'] as bool?;

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('breachedPasswordLastCheckedInstant',
      instance.breachedPasswordLastCheckedInstant);
  writeNotNull('breachedPasswordStatus',
      _$BreachedPasswordStatusEnumMap[instance.breachedPasswordStatus]);
  writeNotNull('connectorId', instance.connectorId);
  writeNotNull('encryptionScheme', instance.encryptionScheme);
  writeNotNull('factor', instance.factor);
  writeNotNull('id', instance.id);
  writeNotNull('lastLoginInstant', instance.lastLoginInstant);
  writeNotNull('password', instance.password);
  writeNotNull('passwordChangeReason',
      _$ChangePasswordReasonEnumMap[instance.passwordChangeReason]);
  writeNotNull('passwordChangeRequired', instance.passwordChangeRequired);
  writeNotNull('passwordLastUpdateInstant', instance.passwordLastUpdateInstant);
  writeNotNull('salt', instance.salt);
  writeNotNull('uniqueUsername', instance.uniqueUsername);
  writeNotNull('username', instance.username);
  writeNotNull(
      'usernameStatus', _$ContentStatusEnumMap[instance.usernameStatus]);
  writeNotNull('verified', instance.verified);
  writeNotNull('active', instance.active);
  writeNotNull('birthDate', instance.birthDate);
  writeNotNull('cleanSpeakId', instance.cleanSpeakId);
  writeNotNull('data', instance.data);
  writeNotNull('email', instance.email);
  writeNotNull('expiry', instance.expiry);
  writeNotNull('firstName', instance.firstName);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastName', instance.lastName);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('memberships', instance.memberships);
  writeNotNull('middleName', instance.middleName);
  writeNotNull('mobilePhone', instance.mobilePhone);
  writeNotNull('parentEmail', instance.parentEmail);
  writeNotNull('preferredLanguages', instance.preferredLanguages);
  writeNotNull('registrations', instance.registrations);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('twoFactor', instance.twoFactor);
  return val;
}

UserAction _$UserActionFromJson(Map<String, dynamic> json) => UserAction(
      active: json['active'] as bool?,
      cancelEmailTemplateId: json['cancelEmailTemplateId'] as String?,
      endEmailTemplateId: json['endEmailTemplateId'] as String?,
      id: json['id'] as String?,
      includeEmailInEventJSON: json['includeEmailInEventJSON'] as bool?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      localizedNames: (json['localizedNames'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      modifyEmailTemplateId: json['modifyEmailTemplateId'] as String?,
      name: json['name'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => UserActionOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      preventLogin: json['preventLogin'] as bool?,
      sendEndEvent: json['sendEndEvent'] as bool?,
      startEmailTemplateId: json['startEmailTemplateId'] as String?,
      temporal: json['temporal'] as bool?,
      transactionType: _$enumDecodeNullable(
          _$TransactionTypeEnumMap, json['transactionType']),
      userEmailingEnabled: json['userEmailingEnabled'] as bool?,
      userNotificationsEnabled: json['userNotificationsEnabled'] as bool?,
    );

Map<String, dynamic> _$UserActionToJson(UserAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  writeNotNull('cancelEmailTemplateId', instance.cancelEmailTemplateId);
  writeNotNull('endEmailTemplateId', instance.endEmailTemplateId);
  writeNotNull('id', instance.id);
  writeNotNull('includeEmailInEventJSON', instance.includeEmailInEventJSON);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('localizedNames', instance.localizedNames);
  writeNotNull('modifyEmailTemplateId', instance.modifyEmailTemplateId);
  writeNotNull('name', instance.name);
  writeNotNull('options', instance.options);
  writeNotNull('preventLogin', instance.preventLogin);
  writeNotNull('sendEndEvent', instance.sendEndEvent);
  writeNotNull('startEmailTemplateId', instance.startEmailTemplateId);
  writeNotNull('temporal', instance.temporal);
  writeNotNull(
      'transactionType', _$TransactionTypeEnumMap[instance.transactionType]);
  writeNotNull('userEmailingEnabled', instance.userEmailingEnabled);
  writeNotNull('userNotificationsEnabled', instance.userNotificationsEnabled);
  return val;
}

UserActionEvent _$UserActionEventFromJson(Map<String, dynamic> json) =>
    UserActionEvent(
      action: json['action'] as String?,
      actioneeUserId: json['actioneeUserId'] as String?,
      actionerUserId: json['actionerUserId'] as String?,
      actionId: json['actionId'] as String?,
      applicationIds: (json['applicationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      comment: json['comment'] as String?,
      email: json['email'] == null
          ? null
          : Email.fromJson(json['email'] as Map<String, dynamic>),
      emailedUser: json['emailedUser'] as bool?,
      expiry: json['expiry'] as num?,
      localizedAction: json['localizedAction'] as String?,
      localizedDuration: json['localizedDuration'] as String?,
      localizedOption: json['localizedOption'] as String?,
      localizedReason: json['localizedReason'] as String?,
      notifyUser: json['notifyUser'] as bool?,
      option: json['option'] as String?,
      phase: _$enumDecodeNullable(_$UserActionPhaseEnumMap, json['phase']),
      reason: json['reason'] as String?,
      reasonCode: json['reasonCode'] as String?,
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserActionEventToJson(UserActionEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('action', instance.action);
  writeNotNull('actioneeUserId', instance.actioneeUserId);
  writeNotNull('actionerUserId', instance.actionerUserId);
  writeNotNull('actionId', instance.actionId);
  writeNotNull('applicationIds', instance.applicationIds);
  writeNotNull('comment', instance.comment);
  writeNotNull('email', instance.email);
  writeNotNull('emailedUser', instance.emailedUser);
  writeNotNull('expiry', instance.expiry);
  writeNotNull('localizedAction', instance.localizedAction);
  writeNotNull('localizedDuration', instance.localizedDuration);
  writeNotNull('localizedOption', instance.localizedOption);
  writeNotNull('localizedReason', instance.localizedReason);
  writeNotNull('notifyUser', instance.notifyUser);
  writeNotNull('option', instance.option);
  writeNotNull('phase', _$UserActionPhaseEnumMap[instance.phase]);
  writeNotNull('reason', instance.reason);
  writeNotNull('reasonCode', instance.reasonCode);
  return val;
}

const _$UserActionPhaseEnumMap = {
  UserActionPhase.start: 'start',
  UserActionPhase.modify: 'modify',
  UserActionPhase.cancel: 'cancel',
  UserActionPhase.end: 'end',
};

UserActionLog _$UserActionLogFromJson(Map<String, dynamic> json) =>
    UserActionLog(
      actioneeUserId: json['actioneeUserId'] as String?,
      actionerUserId: json['actionerUserId'] as String?,
      applicationIds: (json['applicationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      comment: json['comment'] as String?,
      emailUserOnEnd: json['emailUserOnEnd'] as bool?,
      endEventSent: json['endEventSent'] as bool?,
      expiry: json['expiry'] as num?,
      history: json['history'] == null
          ? null
          : LogHistory.fromJson(json['history'] as Map<String, dynamic>),
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      localizedName: json['localizedName'] as String?,
      localizedOption: json['localizedOption'] as String?,
      localizedReason: json['localizedReason'] as String?,
      name: json['name'] as String?,
      notifyUserOnEnd: json['notifyUserOnEnd'] as bool?,
      option: json['option'] as String?,
      reason: json['reason'] as String?,
      reasonCode: json['reasonCode'] as String?,
      userActionId: json['userActionId'] as String?,
    );

Map<String, dynamic> _$UserActionLogToJson(UserActionLog instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('actioneeUserId', instance.actioneeUserId);
  writeNotNull('actionerUserId', instance.actionerUserId);
  writeNotNull('applicationIds', instance.applicationIds);
  writeNotNull('comment', instance.comment);
  writeNotNull('emailUserOnEnd', instance.emailUserOnEnd);
  writeNotNull('endEventSent', instance.endEventSent);
  writeNotNull('expiry', instance.expiry);
  writeNotNull('history', instance.history);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('localizedName', instance.localizedName);
  writeNotNull('localizedOption', instance.localizedOption);
  writeNotNull('localizedReason', instance.localizedReason);
  writeNotNull('name', instance.name);
  writeNotNull('notifyUserOnEnd', instance.notifyUserOnEnd);
  writeNotNull('option', instance.option);
  writeNotNull('reason', instance.reason);
  writeNotNull('reasonCode', instance.reasonCode);
  writeNotNull('userActionId', instance.userActionId);
  return val;
}

UserActionOption _$UserActionOptionFromJson(Map<String, dynamic> json) =>
    UserActionOption(
      localizedNames: (json['localizedNames'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UserActionOptionToJson(UserActionOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('localizedNames', instance.localizedNames);
  writeNotNull('name', instance.name);
  return val;
}

UserActionReason _$UserActionReasonFromJson(Map<String, dynamic> json) =>
    UserActionReason(
      code: json['code'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      localizedTexts: (json['localizedTexts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$UserActionReasonToJson(UserActionReason instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('localizedTexts', instance.localizedTexts);
  writeNotNull('text', instance.text);
  return val;
}

UserActionReasonRequest _$UserActionReasonRequestFromJson(
        Map<String, dynamic> json) =>
    UserActionReasonRequest(
      userActionReason: json['userActionReason'] == null
          ? null
          : UserActionReason.fromJson(
              json['userActionReason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserActionReasonRequestToJson(
    UserActionReasonRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userActionReason', instance.userActionReason);
  return val;
}

UserActionReasonResponse _$UserActionReasonResponseFromJson(
        Map<String, dynamic> json) =>
    UserActionReasonResponse(
      userActionReason: json['userActionReason'] == null
          ? null
          : UserActionReason.fromJson(
              json['userActionReason'] as Map<String, dynamic>),
      userActionReasons: (json['userActionReasons'] as List<dynamic>?)
          ?.map((e) => UserActionReason.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserActionReasonResponseToJson(
    UserActionReasonResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userActionReason', instance.userActionReason);
  writeNotNull('userActionReasons', instance.userActionReasons);
  return val;
}

UserActionRequest _$UserActionRequestFromJson(Map<String, dynamic> json) =>
    UserActionRequest(
      userAction: json['userAction'] == null
          ? null
          : UserAction.fromJson(json['userAction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserActionRequestToJson(UserActionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userAction', instance.userAction);
  return val;
}

UserActionResponse _$UserActionResponseFromJson(Map<String, dynamic> json) =>
    UserActionResponse(
      userAction: json['userAction'] == null
          ? null
          : UserAction.fromJson(json['userAction'] as Map<String, dynamic>),
      userActions: (json['userActions'] as List<dynamic>?)
          ?.map((e) => UserAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserActionResponseToJson(UserActionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userAction', instance.userAction);
  writeNotNull('userActions', instance.userActions);
  return val;
}

UserBulkCreateEvent _$UserBulkCreateEventFromJson(Map<String, dynamic> json) =>
    UserBulkCreateEvent(
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserBulkCreateEventToJson(UserBulkCreateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('users', instance.users);
  return val;
}

UserComment _$UserCommentFromJson(Map<String, dynamic> json) => UserComment(
      comment: json['comment'] as String?,
      commenterId: json['commenterId'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$UserCommentToJson(UserComment instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment);
  writeNotNull('commenterId', instance.commenterId);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('userId', instance.userId);
  return val;
}

UserCommentRequest _$UserCommentRequestFromJson(Map<String, dynamic> json) =>
    UserCommentRequest(
      userComment: json['userComment'] == null
          ? null
          : UserComment.fromJson(json['userComment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCommentRequestToJson(UserCommentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userComment', instance.userComment);
  return val;
}

UserCommentResponse _$UserCommentResponseFromJson(Map<String, dynamic> json) =>
    UserCommentResponse(
      userComment: json['userComment'] == null
          ? null
          : UserComment.fromJson(json['userComment'] as Map<String, dynamic>),
      userComments: (json['userComments'] as List<dynamic>?)
          ?.map((e) => UserComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserCommentResponseToJson(UserCommentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userComment', instance.userComment);
  writeNotNull('userComments', instance.userComments);
  return val;
}

UserConsent _$UserConsentFromJson(Map<String, dynamic> json) => UserConsent(
      consent: json['consent'] == null
          ? null
          : Consent.fromJson(json['consent'] as Map<String, dynamic>),
      consentId: json['consentId'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      giverUserId: json['giverUserId'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      status: _$enumDecodeNullable(_$ConsentStatusEnumMap, json['status']),
      userId: json['userId'] as String?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserConsentToJson(UserConsent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consent', instance.consent);
  writeNotNull('consentId', instance.consentId);
  writeNotNull('data', instance.data);
  writeNotNull('giverUserId', instance.giverUserId);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('status', _$ConsentStatusEnumMap[instance.status]);
  writeNotNull('userId', instance.userId);
  writeNotNull('values', instance.values);
  return val;
}

const _$ConsentStatusEnumMap = {
  ConsentStatus.Active: 'Active',
  ConsentStatus.Revoked: 'Revoked',
};

UserConsentRequest _$UserConsentRequestFromJson(Map<String, dynamic> json) =>
    UserConsentRequest(
      userConsent: json['userConsent'] == null
          ? null
          : UserConsent.fromJson(json['userConsent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserConsentRequestToJson(UserConsentRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userConsent', instance.userConsent);
  return val;
}

UserConsentResponse _$UserConsentResponseFromJson(Map<String, dynamic> json) =>
    UserConsentResponse(
      userConsent: json['userConsent'] == null
          ? null
          : UserConsent.fromJson(json['userConsent'] as Map<String, dynamic>),
      userConsents: (json['userConsents'] as List<dynamic>?)
          ?.map((e) => UserConsent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserConsentResponseToJson(UserConsentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userConsent', instance.userConsent);
  writeNotNull('userConsents', instance.userConsents);
  return val;
}

UserCreateCompleteEvent _$UserCreateCompleteEventFromJson(
        Map<String, dynamic> json) =>
    UserCreateCompleteEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserCreateCompleteEventToJson(
    UserCreateCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserCreateEvent _$UserCreateEventFromJson(Map<String, dynamic> json) =>
    UserCreateEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserCreateEventToJson(UserCreateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserDeactivateEvent _$UserDeactivateEventFromJson(Map<String, dynamic> json) =>
    UserDeactivateEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserDeactivateEventToJson(UserDeactivateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserDeleteCompleteEvent _$UserDeleteCompleteEventFromJson(
        Map<String, dynamic> json) =>
    UserDeleteCompleteEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserDeleteCompleteEventToJson(
    UserDeleteCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserDeleteEvent _$UserDeleteEventFromJson(Map<String, dynamic> json) =>
    UserDeleteEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserDeleteEventToJson(UserDeleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserDeleteRequest _$UserDeleteRequestFromJson(Map<String, dynamic> json) =>
    UserDeleteRequest(
      dryRun: json['dryRun'] as bool?,
      hardDelete: json['hardDelete'] as bool?,
      query: json['query'] as String?,
      queryString: json['queryString'] as String?,
      userIds:
          (json['userIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$UserDeleteRequestToJson(UserDeleteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('dryRun', instance.dryRun);
  writeNotNull('hardDelete', instance.hardDelete);
  writeNotNull('query', instance.query);
  writeNotNull('queryString', instance.queryString);
  writeNotNull('userIds', instance.userIds);
  return val;
}

UserDeleteResponse _$UserDeleteResponseFromJson(Map<String, dynamic> json) =>
    UserDeleteResponse(
      dryRun: json['dryRun'] as bool?,
      hardDelete: json['hardDelete'] as bool?,
      total: json['total'] as num?,
      userIds:
          (json['userIds'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserDeleteResponseToJson(UserDeleteResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dryRun', instance.dryRun);
  writeNotNull('hardDelete', instance.hardDelete);
  writeNotNull('total', instance.total);
  writeNotNull('userIds', instance.userIds);
  return val;
}

UserDeleteSingleRequest _$UserDeleteSingleRequestFromJson(
        Map<String, dynamic> json) =>
    UserDeleteSingleRequest(
      hardDelete: json['hardDelete'] as bool?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$UserDeleteSingleRequestToJson(
    UserDeleteSingleRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('hardDelete', instance.hardDelete);
  return val;
}

UserEmailUpdateEvent _$UserEmailUpdateEventFromJson(
        Map<String, dynamic> json) =>
    UserEmailUpdateEvent(
      previousEmail: json['previousEmail'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserEmailUpdateEventToJson(
    UserEmailUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('previousEmail', instance.previousEmail);
  writeNotNull('user', instance.user);
  return val;
}

UserEmailVerifiedEvent _$UserEmailVerifiedEventFromJson(
        Map<String, dynamic> json) =>
    UserEmailVerifiedEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserEmailVerifiedEventToJson(
    UserEmailVerifiedEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserIdentityProviderLinkEvent _$UserIdentityProviderLinkEventFromJson(
        Map<String, dynamic> json) =>
    UserIdentityProviderLinkEvent(
      identityProviderLink: json['identityProviderLink'] == null
          ? null
          : IdentityProviderLink.fromJson(
              json['identityProviderLink'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserIdentityProviderLinkEventToJson(
    UserIdentityProviderLinkEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('identityProviderLink', instance.identityProviderLink);
  writeNotNull('user', instance.user);
  return val;
}

UserIdentityProviderUnlinkEvent _$UserIdentityProviderUnlinkEventFromJson(
        Map<String, dynamic> json) =>
    UserIdentityProviderUnlinkEvent(
      identityProviderLink: json['identityProviderLink'] == null
          ? null
          : IdentityProviderLink.fromJson(
              json['identityProviderLink'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserIdentityProviderUnlinkEventToJson(
    UserIdentityProviderUnlinkEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('identityProviderLink', instance.identityProviderLink);
  writeNotNull('user', instance.user);
  return val;
}

UserLoginFailedEvent _$UserLoginFailedEventFromJson(
        Map<String, dynamic> json) =>
    UserLoginFailedEvent(
      applicationId: json['applicationId'] as String?,
      authenticationType: json['authenticationType'] as String?,
      ipAddress: json['ipAddress'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserLoginFailedEventToJson(
    UserLoginFailedEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('authenticationType', instance.authenticationType);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('user', instance.user);
  return val;
}

UserLoginIdDuplicateOnCreateEvent _$UserLoginIdDuplicateOnCreateEventFromJson(
        Map<String, dynamic> json) =>
    UserLoginIdDuplicateOnCreateEvent(
      duplicateEmail: json['duplicateEmail'] as String?,
      duplicateUsername: json['duplicateUsername'] as String?,
      existing: json['existing'] == null
          ? null
          : User.fromJson(json['existing'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserLoginIdDuplicateOnCreateEventToJson(
    UserLoginIdDuplicateOnCreateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('duplicateEmail', instance.duplicateEmail);
  writeNotNull('duplicateUsername', instance.duplicateUsername);
  writeNotNull('existing', instance.existing);
  writeNotNull('user', instance.user);
  return val;
}

UserLoginIdDuplicateOnUpdateEvent _$UserLoginIdDuplicateOnUpdateEventFromJson(
        Map<String, dynamic> json) =>
    UserLoginIdDuplicateOnUpdateEvent()
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type'])
      ..duplicateEmail = json['duplicateEmail'] as String?
      ..duplicateUsername = json['duplicateUsername'] as String?
      ..existing = json['existing'] == null
          ? null
          : User.fromJson(json['existing'] as Map<String, dynamic>)
      ..user = json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$UserLoginIdDuplicateOnUpdateEventToJson(
    UserLoginIdDuplicateOnUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('duplicateEmail', instance.duplicateEmail);
  writeNotNull('duplicateUsername', instance.duplicateUsername);
  writeNotNull('existing', instance.existing);
  writeNotNull('user', instance.user);
  return val;
}

UserLoginNewDeviceEvent _$UserLoginNewDeviceEventFromJson(
        Map<String, dynamic> json) =>
    UserLoginNewDeviceEvent()
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type'])
      ..applicationId = json['applicationId'] as String?
      ..authenticationType = json['authenticationType'] as String?
      ..connectorId = json['connectorId'] as String?
      ..identityProviderId = json['identityProviderId'] as String?
      ..identityProviderName = json['identityProviderName'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..user = json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$UserLoginNewDeviceEventToJson(
    UserLoginNewDeviceEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('authenticationType', instance.authenticationType);
  writeNotNull('connectorId', instance.connectorId);
  writeNotNull('identityProviderId', instance.identityProviderId);
  writeNotNull('identityProviderName', instance.identityProviderName);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('user', instance.user);
  return val;
}

UserLoginSuccessEvent _$UserLoginSuccessEventFromJson(
        Map<String, dynamic> json) =>
    UserLoginSuccessEvent(
      applicationId: json['applicationId'] as String?,
      authenticationType: json['authenticationType'] as String?,
      connectorId: json['connectorId'] as String?,
      identityProviderId: json['identityProviderId'] as String?,
      identityProviderName: json['identityProviderName'] as String?,
      ipAddress: json['ipAddress'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserLoginSuccessEventToJson(
    UserLoginSuccessEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('authenticationType', instance.authenticationType);
  writeNotNull('connectorId', instance.connectorId);
  writeNotNull('identityProviderId', instance.identityProviderId);
  writeNotNull('identityProviderName', instance.identityProviderName);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('user', instance.user);
  return val;
}

UserLoginSuspiciousEvent _$UserLoginSuspiciousEventFromJson(
        Map<String, dynamic> json) =>
    UserLoginSuspiciousEvent(
      threatsDetected: (json['threatsDetected'] as List<dynamic>?)
          ?.map((e) => _$enumDecode(_$AuthenticationThreatsEnumMap, e))
          .toSet(),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type'])
      ..applicationId = json['applicationId'] as String?
      ..authenticationType = json['authenticationType'] as String?
      ..connectorId = json['connectorId'] as String?
      ..identityProviderId = json['identityProviderId'] as String?
      ..identityProviderName = json['identityProviderName'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..user = json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic> _$UserLoginSuspiciousEventToJson(
    UserLoginSuspiciousEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('authenticationType', instance.authenticationType);
  writeNotNull('connectorId', instance.connectorId);
  writeNotNull('identityProviderId', instance.identityProviderId);
  writeNotNull('identityProviderName', instance.identityProviderName);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('user', instance.user);
  writeNotNull(
      'threatsDetected',
      instance.threatsDetected
          ?.map((e) => _$AuthenticationThreatsEnumMap[e])
          .toList());
  return val;
}

UsernameModeration _$UsernameModerationFromJson(Map<String, dynamic> json) =>
    UsernameModeration(
      applicationId: json['applicationId'] as String?,
    )..enabled = json['enabled'] as bool?;

Map<String, dynamic> _$UsernameModerationToJson(UsernameModeration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationId', instance.applicationId);
  return val;
}

UserPasswordBreachEvent _$UserPasswordBreachEventFromJson(
        Map<String, dynamic> json) =>
    UserPasswordBreachEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserPasswordBreachEventToJson(
    UserPasswordBreachEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserPasswordResetSendEvent _$UserPasswordResetSendEventFromJson(
        Map<String, dynamic> json) =>
    UserPasswordResetSendEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserPasswordResetSendEventToJson(
    UserPasswordResetSendEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserPasswordResetStartEvent _$UserPasswordResetStartEventFromJson(
        Map<String, dynamic> json) =>
    UserPasswordResetStartEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserPasswordResetStartEventToJson(
    UserPasswordResetStartEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserPasswordResetSuccessEvent _$UserPasswordResetSuccessEventFromJson(
        Map<String, dynamic> json) =>
    UserPasswordResetSuccessEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserPasswordResetSuccessEventToJson(
    UserPasswordResetSuccessEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserPasswordUpdateEvent _$UserPasswordUpdateEventFromJson(
        Map<String, dynamic> json) =>
    UserPasswordUpdateEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserPasswordUpdateEventToJson(
    UserPasswordUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserReactivateEvent _$UserReactivateEventFromJson(Map<String, dynamic> json) =>
    UserReactivateEvent(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserReactivateEventToJson(UserReactivateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('user', instance.user);
  return val;
}

UserRegistration _$UserRegistrationFromJson(Map<String, dynamic> json) =>
    UserRegistration(
      applicationId: json['applicationId'] as String?,
      authenticationToken: json['authenticationToken'] as String?,
      cleanSpeakId: json['cleanSpeakId'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastLoginInstant: json['lastLoginInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      preferredLanguages: (json['preferredLanguages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      roles: (json['roles'] as List<dynamic>?)?.map((e) => e as String).toSet(),
      timezone: json['timezone'] as String?,
      tokens: (json['tokens'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      username: json['username'] as String?,
      usernameStatus:
          _$enumDecodeNullable(_$ContentStatusEnumMap, json['usernameStatus']),
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$UserRegistrationToJson(UserRegistration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('authenticationToken', instance.authenticationToken);
  writeNotNull('cleanSpeakId', instance.cleanSpeakId);
  writeNotNull('data', instance.data);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastLoginInstant', instance.lastLoginInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('preferredLanguages', instance.preferredLanguages);
  writeNotNull('roles', instance.roles?.toList());
  writeNotNull('timezone', instance.timezone);
  writeNotNull('tokens', instance.tokens);
  writeNotNull('username', instance.username);
  writeNotNull(
      'usernameStatus', _$ContentStatusEnumMap[instance.usernameStatus]);
  writeNotNull('verified', instance.verified);
  return val;
}

UserRegistrationCreateCompleteEvent
    _$UserRegistrationCreateCompleteEventFromJson(Map<String, dynamic> json) =>
        UserRegistrationCreateCompleteEvent(
          applicationId: json['applicationId'] as String?,
          registration: json['registration'] == null
              ? null
              : UserRegistration.fromJson(
                  json['registration'] as Map<String, dynamic>),
          user: json['user'] == null
              ? null
              : User.fromJson(json['user'] as Map<String, dynamic>),
        )
          ..createInstant = json['createInstant'] as num?
          ..id = json['id'] as String?
          ..info = json['info'] == null
              ? null
              : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
          ..tenantId = json['tenantId'] as String?
          ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserRegistrationCreateCompleteEventToJson(
    UserRegistrationCreateCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('registration', instance.registration);
  writeNotNull('user', instance.user);
  return val;
}

UserRegistrationCreateEvent _$UserRegistrationCreateEventFromJson(
        Map<String, dynamic> json) =>
    UserRegistrationCreateEvent(
      applicationId: json['applicationId'] as String?,
      registration: json['registration'] == null
          ? null
          : UserRegistration.fromJson(
              json['registration'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserRegistrationCreateEventToJson(
    UserRegistrationCreateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('registration', instance.registration);
  writeNotNull('user', instance.user);
  return val;
}

UserRegistrationDeleteCompleteEvent
    _$UserRegistrationDeleteCompleteEventFromJson(Map<String, dynamic> json) =>
        UserRegistrationDeleteCompleteEvent(
          applicationId: json['applicationId'] as String?,
          registration: json['registration'] == null
              ? null
              : UserRegistration.fromJson(
                  json['registration'] as Map<String, dynamic>),
          user: json['user'] == null
              ? null
              : User.fromJson(json['user'] as Map<String, dynamic>),
        )
          ..createInstant = json['createInstant'] as num?
          ..id = json['id'] as String?
          ..info = json['info'] == null
              ? null
              : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
          ..tenantId = json['tenantId'] as String?
          ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserRegistrationDeleteCompleteEventToJson(
    UserRegistrationDeleteCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('registration', instance.registration);
  writeNotNull('user', instance.user);
  return val;
}

UserRegistrationDeleteEvent _$UserRegistrationDeleteEventFromJson(
        Map<String, dynamic> json) =>
    UserRegistrationDeleteEvent(
      applicationId: json['applicationId'] as String?,
      registration: json['registration'] == null
          ? null
          : UserRegistration.fromJson(
              json['registration'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserRegistrationDeleteEventToJson(
    UserRegistrationDeleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('registration', instance.registration);
  writeNotNull('user', instance.user);
  return val;
}

UserRegistrationUpdateCompleteEvent
    _$UserRegistrationUpdateCompleteEventFromJson(Map<String, dynamic> json) =>
        UserRegistrationUpdateCompleteEvent(
          applicationId: json['applicationId'] as String?,
          original: json['original'] == null
              ? null
              : UserRegistration.fromJson(
                  json['original'] as Map<String, dynamic>),
          registration: json['registration'] == null
              ? null
              : UserRegistration.fromJson(
                  json['registration'] as Map<String, dynamic>),
          user: json['user'] == null
              ? null
              : User.fromJson(json['user'] as Map<String, dynamic>),
        )
          ..createInstant = json['createInstant'] as num?
          ..id = json['id'] as String?
          ..info = json['info'] == null
              ? null
              : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
          ..tenantId = json['tenantId'] as String?
          ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserRegistrationUpdateCompleteEventToJson(
    UserRegistrationUpdateCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('original', instance.original);
  writeNotNull('registration', instance.registration);
  writeNotNull('user', instance.user);
  return val;
}

UserRegistrationUpdateEvent _$UserRegistrationUpdateEventFromJson(
        Map<String, dynamic> json) =>
    UserRegistrationUpdateEvent(
      applicationId: json['applicationId'] as String?,
      original: json['original'] == null
          ? null
          : UserRegistration.fromJson(json['original'] as Map<String, dynamic>),
      registration: json['registration'] == null
          ? null
          : UserRegistration.fromJson(
              json['registration'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserRegistrationUpdateEventToJson(
    UserRegistrationUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('original', instance.original);
  writeNotNull('registration', instance.registration);
  writeNotNull('user', instance.user);
  return val;
}

UserRegistrationVerifiedEvent _$UserRegistrationVerifiedEventFromJson(
        Map<String, dynamic> json) =>
    UserRegistrationVerifiedEvent(
      applicationId: json['applicationId'] as String?,
      registration: json['registration'] == null
          ? null
          : UserRegistration.fromJson(
              json['registration'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserRegistrationVerifiedEventToJson(
    UserRegistrationVerifiedEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('registration', instance.registration);
  writeNotNull('user', instance.user);
  return val;
}

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) => UserRequest(
      applicationId: json['applicationId'] as String?,
      disableDomainBlock: json['disableDomainBlock'] as bool?,
      sendSetPasswordEmail: json['sendSetPasswordEmail'] as bool?,
      skipVerification: json['skipVerification'] as bool?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$UserRequestToJson(UserRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('disableDomainBlock', instance.disableDomainBlock);
  writeNotNull('sendSetPasswordEmail', instance.sendSetPasswordEmail);
  writeNotNull('skipVerification', instance.skipVerification);
  writeNotNull('user', instance.user);
  return val;
}

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      emailVerificationId: json['emailVerificationId'] as String?,
      registrationVerificationIds:
          (json['registrationVerificationIds'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      token: json['token'] as String?,
      tokenExpirationInstant: json['tokenExpirationInstant'] as num?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emailVerificationId', instance.emailVerificationId);
  writeNotNull(
      'registrationVerificationIds', instance.registrationVerificationIds);
  writeNotNull('token', instance.token);
  writeNotNull('tokenExpirationInstant', instance.tokenExpirationInstant);
  writeNotNull('user', instance.user);
  return val;
}

UserSearchCriteria _$UserSearchCriteriaFromJson(Map<String, dynamic> json) =>
    UserSearchCriteria()
      ..numberOfResults = json['numberOfResults'] as num?
      ..orderBy = json['orderBy'] as String?
      ..startRow = json['startRow'] as num?
      ..accurateTotal = json['accurateTotal'] as bool? ?? false
      ..ids = (json['ids'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..query = json['query'] as String?
      ..queryString = json['queryString'] as String?
      ..sortFields = (json['sortFields'] as List<dynamic>?)
          ?.map((e) => SortField.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UserSearchCriteriaToJson(UserSearchCriteria instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberOfResults', instance.numberOfResults);
  writeNotNull('orderBy', instance.orderBy);
  writeNotNull('startRow', instance.startRow);
  writeNotNull('accurateTotal', instance.accurateTotal);
  writeNotNull('ids', instance.ids);
  writeNotNull('query', instance.query);
  writeNotNull('queryString', instance.queryString);
  writeNotNull('sortFields', instance.sortFields);
  return val;
}

UserTwoFactorConfiguration _$UserTwoFactorConfigurationFromJson(
        Map<String, dynamic> json) =>
    UserTwoFactorConfiguration(
      methods: (json['methods'] as List<dynamic>?)
          ?.map((e) => TwoFactorMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      recoveryCodes: (json['recoveryCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UserTwoFactorConfigurationToJson(
    UserTwoFactorConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('methods', instance.methods);
  writeNotNull('recoveryCodes', instance.recoveryCodes);
  return val;
}

UserTwoFactorMethodAddEvent _$UserTwoFactorMethodAddEventFromJson(
        Map<String, dynamic> json) =>
    UserTwoFactorMethodAddEvent(
      method: json['method'] == null
          ? null
          : TwoFactorMethod.fromJson(json['method'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserTwoFactorMethodAddEventToJson(
    UserTwoFactorMethodAddEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('method', instance.method);
  writeNotNull('user', instance.user);
  return val;
}

UserTwoFactorMethodRemoveEvent _$UserTwoFactorMethodRemoveEventFromJson(
        Map<String, dynamic> json) =>
    UserTwoFactorMethodRemoveEvent(
      method: json['method'] == null
          ? null
          : TwoFactorMethod.fromJson(json['method'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserTwoFactorMethodRemoveEventToJson(
    UserTwoFactorMethodRemoveEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('method', instance.method);
  writeNotNull('user', instance.user);
  return val;
}

UserUpdateCompleteEvent _$UserUpdateCompleteEventFromJson(
        Map<String, dynamic> json) =>
    UserUpdateCompleteEvent(
      original: json['original'] == null
          ? null
          : User.fromJson(json['original'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserUpdateCompleteEventToJson(
    UserUpdateCompleteEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('original', instance.original);
  writeNotNull('user', instance.user);
  return val;
}

UserUpdateEvent _$UserUpdateEventFromJson(Map<String, dynamic> json) =>
    UserUpdateEvent(
      original: json['original'] == null
          ? null
          : User.fromJson(json['original'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    )
      ..createInstant = json['createInstant'] as num?
      ..id = json['id'] as String?
      ..info = json['info'] == null
          ? null
          : EventInfo.fromJson(json['info'] as Map<String, dynamic>)
      ..tenantId = json['tenantId'] as String?
      ..type = _$enumDecodeNullable(_$EventTypeEnumMap, json['type']);

Map<String, dynamic> _$UserUpdateEventToJson(UserUpdateEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createInstant', instance.createInstant);
  writeNotNull('id', instance.id);
  writeNotNull('info', instance.info);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('type', _$EventTypeEnumMap[instance.type]);
  writeNotNull('original', instance.original);
  writeNotNull('user', instance.user);
  return val;
}

ValidateResponse _$ValidateResponseFromJson(Map<String, dynamic> json) =>
    ValidateResponse(
      jwt: json['jwt'] == null
          ? null
          : JWT.fromJson(json['jwt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidateResponseToJson(ValidateResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('jwt', instance.jwt);
  return val;
}

VerifyEmailRequest _$VerifyEmailRequestFromJson(Map<String, dynamic> json) =>
    VerifyEmailRequest(
      oneTimeCode: json['oneTimeCode'] as String?,
      userId: json['userId'] as String?,
      verificationId: json['verificationId'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$VerifyEmailRequestToJson(VerifyEmailRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('oneTimeCode', instance.oneTimeCode);
  writeNotNull('userId', instance.userId);
  writeNotNull('verificationId', instance.verificationId);
  return val;
}

VerifyEmailResponse _$VerifyEmailResponseFromJson(Map<String, dynamic> json) =>
    VerifyEmailResponse(
      oneTimeCode: json['oneTimeCode'] as String?,
      verificationId: json['verificationId'] as String?,
    );

Map<String, dynamic> _$VerifyEmailResponseToJson(VerifyEmailResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('oneTimeCode', instance.oneTimeCode);
  writeNotNull('verificationId', instance.verificationId);
  return val;
}

VerifyRegistrationRequest _$VerifyRegistrationRequestFromJson(
        Map<String, dynamic> json) =>
    VerifyRegistrationRequest(
      oneTimeCode: json['oneTimeCode'] as String?,
      verificationId: json['verificationId'] as String?,
    )..eventInfo = json['eventInfo'] == null
        ? null
        : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$VerifyRegistrationRequestToJson(
    VerifyRegistrationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('oneTimeCode', instance.oneTimeCode);
  writeNotNull('verificationId', instance.verificationId);
  return val;
}

VerifyRegistrationResponse _$VerifyRegistrationResponseFromJson(
        Map<String, dynamic> json) =>
    VerifyRegistrationResponse(
      oneTimeCode: json['oneTimeCode'] as String?,
      verificationId: json['verificationId'] as String?,
    );

Map<String, dynamic> _$VerifyRegistrationResponseToJson(
    VerifyRegistrationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('oneTimeCode', instance.oneTimeCode);
  writeNotNull('verificationId', instance.verificationId);
  return val;
}

VersionResponse _$VersionResponseFromJson(Map<String, dynamic> json) =>
    VersionResponse(
      version: json['version'] as String?,
    );

Map<String, dynamic> _$VersionResponseToJson(VersionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  return val;
}

WebAuthnAssertResponse _$WebAuthnAssertResponseFromJson(
        Map<String, dynamic> json) =>
    WebAuthnAssertResponse(
      credential: json['credential'] == null
          ? null
          : WebAuthnCredential.fromJson(
              json['credential'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WebAuthnAssertResponseToJson(
    WebAuthnAssertResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credential', instance.credential);
  return val;
}

WebAuthnAuthenticatorAuthenticationResponse
    _$WebAuthnAuthenticatorAuthenticationResponseFromJson(
            Map<String, dynamic> json) =>
        WebAuthnAuthenticatorAuthenticationResponse(
          authenticatorData: json['authenticatorData'] as String?,
          clientDataJSON: json['clientDataJSON'] as String?,
          signature: json['signature'] as String?,
          userHandle: json['userHandle'] as String?,
        );

Map<String, dynamic> _$WebAuthnAuthenticatorAuthenticationResponseToJson(
    WebAuthnAuthenticatorAuthenticationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authenticatorData', instance.authenticatorData);
  writeNotNull('clientDataJSON', instance.clientDataJSON);
  writeNotNull('signature', instance.signature);
  writeNotNull('userHandle', instance.userHandle);
  return val;
}

WebAuthnAuthenticatorRegistrationResponse
    _$WebAuthnAuthenticatorRegistrationResponseFromJson(
            Map<String, dynamic> json) =>
        WebAuthnAuthenticatorRegistrationResponse(
          attestationObject: json['attestationObject'] as String?,
          clientDataJSON: json['clientDataJSON'] as String?,
        );

Map<String, dynamic> _$WebAuthnAuthenticatorRegistrationResponseToJson(
    WebAuthnAuthenticatorRegistrationResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attestationObject', instance.attestationObject);
  writeNotNull('clientDataJSON', instance.clientDataJSON);
  return val;
}

WebAuthnCredential _$WebAuthnCredentialFromJson(Map<String, dynamic> json) =>
    WebAuthnCredential(
      algorithm: _$enumDecodeNullable(
          _$CoseAlgorithmIdentifierEnumMap, json['algorithm']),
      attestationType: _$enumDecodeNullable(
          _$AttestationTypeEnumMap, json['attestationType']),
      authenticatorSupportsUserVerification:
          json['authenticatorSupportsUserVerification'] as bool?,
      credentialId: json['credentialId'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      discoverable: json['discoverable'] as bool?,
      displayName: json['displayName'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUseInstant: json['lastUseInstant'] as num?,
      name: json['name'] as String?,
      publicKey: json['publicKey'] as String?,
      relyingPartyId: json['relyingPartyId'] as String?,
      signCount: json['signCount'] as num?,
      tenantId: json['tenantId'] as String?,
      transports: (json['transports'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      userAgent: json['userAgent'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$WebAuthnCredentialToJson(WebAuthnCredential instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'algorithm', _$CoseAlgorithmIdentifierEnumMap[instance.algorithm]);
  writeNotNull(
      'attestationType', _$AttestationTypeEnumMap[instance.attestationType]);
  writeNotNull('authenticatorSupportsUserVerification',
      instance.authenticatorSupportsUserVerification);
  writeNotNull('credentialId', instance.credentialId);
  writeNotNull('data', instance.data);
  writeNotNull('discoverable', instance.discoverable);
  writeNotNull('displayName', instance.displayName);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUseInstant', instance.lastUseInstant);
  writeNotNull('name', instance.name);
  writeNotNull('publicKey', instance.publicKey);
  writeNotNull('relyingPartyId', instance.relyingPartyId);
  writeNotNull('signCount', instance.signCount);
  writeNotNull('tenantId', instance.tenantId);
  writeNotNull('transports', instance.transports);
  writeNotNull('userAgent', instance.userAgent);
  writeNotNull('userId', instance.userId);
  return val;
}

const _$AttestationTypeEnumMap = {
  AttestationType.basic: 'basic',
  AttestationType.self: 'self',
  AttestationType.attestationCa: 'attestationCa',
  AttestationType.anonymizationCa: 'anonymizationCa',
  AttestationType.none: 'none',
};

WebAuthnCredentialImportRequest _$WebAuthnCredentialImportRequestFromJson(
        Map<String, dynamic> json) =>
    WebAuthnCredentialImportRequest(
      credentials: (json['credentials'] as List<dynamic>?)
          ?.map((e) => WebAuthnCredential.fromJson(e as Map<String, dynamic>))
          .toList(),
      validateDbConstraints: json['validateDbConstraints'] as bool?,
    );

Map<String, dynamic> _$WebAuthnCredentialImportRequestToJson(
    WebAuthnCredentialImportRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credentials', instance.credentials);
  writeNotNull('validateDbConstraints', instance.validateDbConstraints);
  return val;
}

WebAuthnCredentialResponse _$WebAuthnCredentialResponseFromJson(
        Map<String, dynamic> json) =>
    WebAuthnCredentialResponse(
      credential: json['credential'] == null
          ? null
          : WebAuthnCredential.fromJson(
              json['credential'] as Map<String, dynamic>),
      credentials: (json['credentials'] as List<dynamic>?)
          ?.map((e) => WebAuthnCredential.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WebAuthnCredentialResponseToJson(
    WebAuthnCredentialResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credential', instance.credential);
  writeNotNull('credentials', instance.credentials);
  return val;
}

WebAuthnExtensionsClientOutputs _$WebAuthnExtensionsClientOutputsFromJson(
        Map<String, dynamic> json) =>
    WebAuthnExtensionsClientOutputs(
      credProps: json['credProps'] == null
          ? null
          : CredentialPropertiesOutput.fromJson(
              json['credProps'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WebAuthnExtensionsClientOutputsToJson(
    WebAuthnExtensionsClientOutputs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credProps', instance.credProps);
  return val;
}

WebAuthnLoginRequest _$WebAuthnLoginRequestFromJson(
        Map<String, dynamic> json) =>
    WebAuthnLoginRequest(
      credential: json['credential'] == null
          ? null
          : WebAuthnPublicKeyAuthenticationRequest.fromJson(
              json['credential'] as Map<String, dynamic>),
      origin: json['origin'] as String?,
      rpId: json['rpId'] as String?,
      twoFactorTrustId: json['twoFactorTrustId'] as String?,
    )
      ..eventInfo = json['eventInfo'] == null
          ? null
          : EventInfo.fromJson(json['eventInfo'] as Map<String, dynamic>)
      ..applicationId = json['applicationId'] as String?
      ..ipAddress = json['ipAddress'] as String?
      ..metaData = json['metaData'] == null
          ? null
          : MetaData.fromJson(json['metaData'] as Map<String, dynamic>)
      ..newDevice = json['newDevice'] as bool?
      ..noJWT = json['noJWT'] as bool?;

Map<String, dynamic> _$WebAuthnLoginRequestToJson(
    WebAuthnLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('eventInfo', instance.eventInfo);
  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('ipAddress', instance.ipAddress);
  writeNotNull('metaData', instance.metaData);
  writeNotNull('newDevice', instance.newDevice);
  writeNotNull('noJWT', instance.noJWT);
  writeNotNull('credential', instance.credential);
  writeNotNull('origin', instance.origin);
  writeNotNull('rpId', instance.rpId);
  writeNotNull('twoFactorTrustId', instance.twoFactorTrustId);
  return val;
}

WebAuthnPublicKeyAuthenticationRequest
    _$WebAuthnPublicKeyAuthenticationRequestFromJson(
            Map<String, dynamic> json) =>
        WebAuthnPublicKeyAuthenticationRequest(
          clientExtensionResults: json['clientExtensionResults'] == null
              ? null
              : WebAuthnExtensionsClientOutputs.fromJson(
                  json['clientExtensionResults'] as Map<String, dynamic>),
          id: json['id'] as String?,
          response: json['response'] == null
              ? null
              : WebAuthnAuthenticatorAuthenticationResponse.fromJson(
                  json['response'] as Map<String, dynamic>),
          rpId: json['rpId'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$WebAuthnPublicKeyAuthenticationRequestToJson(
    WebAuthnPublicKeyAuthenticationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientExtensionResults', instance.clientExtensionResults);
  writeNotNull('id', instance.id);
  writeNotNull('response', instance.response);
  writeNotNull('rpId', instance.rpId);
  writeNotNull('type', instance.type);
  return val;
}

WebAuthnPublicKeyRegistrationRequest
    _$WebAuthnPublicKeyRegistrationRequestFromJson(Map<String, dynamic> json) =>
        WebAuthnPublicKeyRegistrationRequest(
          clientExtensionResults: json['clientExtensionResults'] == null
              ? null
              : WebAuthnExtensionsClientOutputs.fromJson(
                  json['clientExtensionResults'] as Map<String, dynamic>),
          id: json['id'] as String?,
          response: json['response'] == null
              ? null
              : WebAuthnAuthenticatorRegistrationResponse.fromJson(
                  json['response'] as Map<String, dynamic>),
          rpId: json['rpId'] as String?,
          transports: (json['transports'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          type: json['type'] as String?,
        );

Map<String, dynamic> _$WebAuthnPublicKeyRegistrationRequestToJson(
    WebAuthnPublicKeyRegistrationRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientExtensionResults', instance.clientExtensionResults);
  writeNotNull('id', instance.id);
  writeNotNull('response', instance.response);
  writeNotNull('rpId', instance.rpId);
  writeNotNull('transports', instance.transports);
  writeNotNull('type', instance.type);
  return val;
}

WebAuthnRegisterCompleteRequest _$WebAuthnRegisterCompleteRequestFromJson(
        Map<String, dynamic> json) =>
    WebAuthnRegisterCompleteRequest(
      credential: json['credential'] == null
          ? null
          : WebAuthnPublicKeyRegistrationRequest.fromJson(
              json['credential'] as Map<String, dynamic>),
      origin: json['origin'] as String?,
      rpId: json['rpId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$WebAuthnRegisterCompleteRequestToJson(
    WebAuthnRegisterCompleteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credential', instance.credential);
  writeNotNull('origin', instance.origin);
  writeNotNull('rpId', instance.rpId);
  writeNotNull('userId', instance.userId);
  return val;
}

WebAuthnRegisterCompleteResponse _$WebAuthnRegisterCompleteResponseFromJson(
        Map<String, dynamic> json) =>
    WebAuthnRegisterCompleteResponse(
      credential: json['credential'] == null
          ? null
          : WebAuthnCredential.fromJson(
              json['credential'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WebAuthnRegisterCompleteResponseToJson(
    WebAuthnRegisterCompleteResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credential', instance.credential);
  return val;
}

WebAuthnRegisterStartRequest _$WebAuthnRegisterStartRequestFromJson(
        Map<String, dynamic> json) =>
    WebAuthnRegisterStartRequest(
      displayName: json['displayName'] as String?,
      name: json['name'] as String?,
      userAgent: json['userAgent'] as String?,
      userId: json['userId'] as String?,
      workflow:
          _$enumDecodeNullable(_$WebAuthnWorkflowEnumMap, json['workflow']),
    );

Map<String, dynamic> _$WebAuthnRegisterStartRequestToJson(
    WebAuthnRegisterStartRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('displayName', instance.displayName);
  writeNotNull('name', instance.name);
  writeNotNull('userAgent', instance.userAgent);
  writeNotNull('userId', instance.userId);
  writeNotNull('workflow', _$WebAuthnWorkflowEnumMap[instance.workflow]);
  return val;
}

const _$WebAuthnWorkflowEnumMap = {
  WebAuthnWorkflow.bootstrap: 'bootstrap',
  WebAuthnWorkflow.general: 'general',
  WebAuthnWorkflow.reauthentication: 'reauthentication',
};

WebAuthnRegisterStartResponse _$WebAuthnRegisterStartResponseFromJson(
        Map<String, dynamic> json) =>
    WebAuthnRegisterStartResponse(
      options: json['options'] == null
          ? null
          : PublicKeyCredentialCreationOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WebAuthnRegisterStartResponseToJson(
    WebAuthnRegisterStartResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options);
  return val;
}

WebAuthnRegistrationExtensionOptions
    _$WebAuthnRegistrationExtensionOptionsFromJson(Map<String, dynamic> json) =>
        WebAuthnRegistrationExtensionOptions(
          credProps: json['credProps'] as bool?,
        );

Map<String, dynamic> _$WebAuthnRegistrationExtensionOptionsToJson(
    WebAuthnRegistrationExtensionOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('credProps', instance.credProps);
  return val;
}

WebAuthnStartRequest _$WebAuthnStartRequestFromJson(
        Map<String, dynamic> json) =>
    WebAuthnStartRequest(
      applicationId: json['applicationId'] as String?,
      credentialId: json['credentialId'] as String?,
      loginId: json['loginId'] as String?,
      state: json['state'] as Map<String, dynamic>?,
      userId: json['userId'] as String?,
      workflow:
          _$enumDecodeNullable(_$WebAuthnWorkflowEnumMap, json['workflow']),
    );

Map<String, dynamic> _$WebAuthnStartRequestToJson(
    WebAuthnStartRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('applicationId', instance.applicationId);
  writeNotNull('credentialId', instance.credentialId);
  writeNotNull('loginId', instance.loginId);
  writeNotNull('state', instance.state);
  writeNotNull('userId', instance.userId);
  writeNotNull('workflow', _$WebAuthnWorkflowEnumMap[instance.workflow]);
  return val;
}

WebAuthnStartResponse _$WebAuthnStartResponseFromJson(
        Map<String, dynamic> json) =>
    WebAuthnStartResponse(
      options: json['options'] == null
          ? null
          : PublicKeyCredentialRequestOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WebAuthnStartResponseToJson(
    WebAuthnStartResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options);
  return val;
}

Webhook _$WebhookFromJson(Map<String, dynamic> json) => Webhook(
      connectTimeout: json['connectTimeout'] as num?,
      data: json['data'] as Map<String, dynamic>?,
      description: json['description'] as String?,
      eventsEnabled: (json['eventsEnabled'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(_$enumDecode(_$EventTypeEnumMap, k), e as bool),
      ),
      global: json['global'] as bool?,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      httpAuthenticationPassword: json['httpAuthenticationPassword'] as String?,
      httpAuthenticationUsername: json['httpAuthenticationUsername'] as String?,
      id: json['id'] as String?,
      insertInstant: json['insertInstant'] as num?,
      lastUpdateInstant: json['lastUpdateInstant'] as num?,
      readTimeout: json['readTimeout'] as num?,
      sslCertificate: json['sslCertificate'] as String?,
      tenantIds: (json['tenantIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$WebhookToJson(Webhook instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('connectTimeout', instance.connectTimeout);
  writeNotNull('data', instance.data);
  writeNotNull('description', instance.description);
  writeNotNull(
      'eventsEnabled',
      instance.eventsEnabled
          ?.map((k, e) => MapEntry(_$EventTypeEnumMap[k], e)));
  writeNotNull('global', instance.global);
  writeNotNull('headers', instance.headers);
  writeNotNull(
      'httpAuthenticationPassword', instance.httpAuthenticationPassword);
  writeNotNull(
      'httpAuthenticationUsername', instance.httpAuthenticationUsername);
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('readTimeout', instance.readTimeout);
  writeNotNull('sslCertificate', instance.sslCertificate);
  writeNotNull('tenantIds', instance.tenantIds);
  writeNotNull('url', instance.url);
  return val;
}

WebhookRequest _$WebhookRequestFromJson(Map<String, dynamic> json) =>
    WebhookRequest(
      webhook: json['webhook'] == null
          ? null
          : Webhook.fromJson(json['webhook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WebhookRequestToJson(WebhookRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('webhook', instance.webhook);
  return val;
}

WebhookResponse _$WebhookResponseFromJson(Map<String, dynamic> json) =>
    WebhookResponse(
      webhook: json['webhook'] == null
          ? null
          : Webhook.fromJson(json['webhook'] as Map<String, dynamic>),
      webhooks: (json['webhooks'] as List<dynamic>?)
          ?.map((e) => Webhook.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WebhookResponseToJson(WebhookResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('webhook', instance.webhook);
  writeNotNull('webhooks', instance.webhooks);
  return val;
}

XboxApplicationConfiguration _$XboxApplicationConfigurationFromJson(
        Map<String, dynamic> json) =>
    XboxApplicationConfiguration(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..createRegistration = json['createRegistration'] as bool?
      ..data = json['data'] as Map<String, dynamic>?;

Map<String, dynamic> _$XboxApplicationConfigurationToJson(
    XboxApplicationConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('createRegistration', instance.createRegistration);
  writeNotNull('data', instance.data);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('scope', instance.scope);
  return val;
}

XboxIdentityProvider _$XboxIdentityProviderFromJson(
        Map<String, dynamic> json) =>
    XboxIdentityProvider(
      buttonText: json['buttonText'] as String?,
      client_id: json['client_id'] as String?,
      client_secret: json['client_secret'] as String?,
      scope: json['scope'] as String?,
    )
      ..enabled = json['enabled'] as bool?
      ..applicationConfiguration =
          (json['applicationConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k,
            XboxApplicationConfiguration.fromJson(e as Map<String, dynamic>)),
      )
      ..data = json['data'] as Map<String, dynamic>?
      ..debug = json['debug'] as bool
      ..id = json['id'] as String?
      ..insertInstant = json['insertInstant'] as num?
      ..lambdaConfiguration = json['lambdaConfiguration']
      ..lastUpdateInstant = json['lastUpdateInstant'] as num?
      ..linkingStrategy = _$enumDecodeNullable(
          _$IdentityProviderLinkingStrategyEnumMap, json['linkingStrategy'])
      ..name = json['name'] as String?
      ..tenantConfiguration =
          (json['tenantConfiguration'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            IdentityProviderTenantConfiguration.fromJson(
                e as Map<String, dynamic>)),
      )
      ..type =
          _$enumDecodeNullable(_$IdentityProviderTypeEnumMap, json['type']);

Map<String, dynamic> _$XboxIdentityProviderToJson(
    XboxIdentityProvider instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enabled', instance.enabled);
  writeNotNull('applicationConfiguration', instance.applicationConfiguration);
  writeNotNull('data', instance.data);
  val['debug'] = instance.debug;
  writeNotNull('id', instance.id);
  writeNotNull('insertInstant', instance.insertInstant);
  writeNotNull('lambdaConfiguration', instance.lambdaConfiguration);
  writeNotNull('lastUpdateInstant', instance.lastUpdateInstant);
  writeNotNull('linkingStrategy',
      _$IdentityProviderLinkingStrategyEnumMap[instance.linkingStrategy]);
  writeNotNull('name', instance.name);
  writeNotNull('tenantConfiguration', instance.tenantConfiguration);
  writeNotNull('type', _$IdentityProviderTypeEnumMap[instance.type]);
  writeNotNull('buttonText', instance.buttonText);
  writeNotNull('client_id', instance.client_id);
  writeNotNull('client_secret', instance.client_secret);
  writeNotNull('scope', instance.scope);
  return val;
}
