.class public Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "EnterpriseDisclosurePreferenceController.java"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "add_account_enterprise_disclosure_footer"

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-void
.end method

.method private addEnterpriseDisclosure()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->getDisclosure()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    .line 74
    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 76
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p0, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    iput-object p1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->addEnterpriseDisclosure()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->getDisclosure()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getDisclosure()Ljava/lang/CharSequence;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {p0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getDeviceOwnerDisclosure()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public setFooterPreferenceMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-void
.end method
