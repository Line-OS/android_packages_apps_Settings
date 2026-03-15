.class public final Lcom/google/android/settings/overlay/FeatureFactoryImpl;
.super Lcom/android/settings/overlay/FeatureFactoryImpl;
.source "FeatureFactoryImpl.java"


# instance fields
.field private mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

.field private mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

.field private mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

.field private mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

.field private mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

.field private mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/overlay/FeatureFactoryImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/google/android/settings/accounts/AccountFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/accounts/AccountFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    .line 143
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    return-object p0
.end method

.method public getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 49
    new-instance v0, Lcom/google/android/settings/applications/ApplicationFeatureProviderGoogleImpl;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 51
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "device_policy"

    .line 52
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/settings/applications/ApplicationFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    return-object p0
.end method

.method public getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/gestures/assist/AssistGestureFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    .line 135
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    return-object p0
.end method

.method public getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/aware/AwareFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    return-object p0
.end method

.method public getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/google/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    .line 90
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    return-object p0
.end method

.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/fuelgauge/PowerUsageFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-object p0
.end method

.method public getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/google/android/settings/search/SearchFeatureProviderGoogleImpl;

    invoke-direct {v0}, Lcom/google/android/settings/search/SearchFeatureProviderGoogleImpl;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    return-object p0
.end method

.method public getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/google/android/settings/dashboard/suggestions/SuggestionFeatureProviderGoogleImpl;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/dashboard/suggestions/SuggestionFeatureProviderGoogleImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    return-object p0
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/android/settings/support/SupportFeatureProviderImpl;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/settings/support/SupportFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSupportProvider:Lcom/android/settings/overlay/SupportFeatureProvider;

    return-object p0
.end method

.method public getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
    .locals 4

    const/4 v0, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settingsgoogle:surveys_enabled"

    invoke-static {v1, v2, v0}, Lcom/google/android/settings/experiments/GServicesProxy;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FeatureFactoryImpl"

    const-string v3, "Error reading survey feature enabled state"

    .line 109
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/google/android/settings/survey/SurveyFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/overlay/FeatureFactoryImpl;->mSurveyFeatureProvider:Lcom/android/settings/overlay/SurveyFeatureProvider;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
