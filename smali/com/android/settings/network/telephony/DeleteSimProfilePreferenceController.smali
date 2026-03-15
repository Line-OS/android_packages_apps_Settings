.class public Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeleteSimProfilePreferenceController.java"


# instance fields
.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mRequestCode:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 59
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$1xbp5IYXODDb4-Q-LSNUyEq9WEI;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$1xbp5IYXODDb4-Q-LSNUyEq9WEI;-><init>(Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public init(ILandroidx/fragment/app/Fragment;I)V
    .locals 2

    .line 43
    iput-object p2, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 45
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 47
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    iput-object v0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 52
    :cond_1
    iput p3, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mRequestCode:I

    return-void
.end method

.method public synthetic lambda$displayPreference$0$DeleteSimProfilePreferenceController(Landroidx/preference/Preference;)Z
    .locals 2

    .line 60
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.telephony.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 62
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const-string v1, "android.telephony.euicc.extra.SUBSCRIPTION_ID"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget p0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mRequestCode:I

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0
.end method
