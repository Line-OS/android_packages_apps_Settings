.class public Lcom/android/settings/network/telephony/DisabledSubscriptionController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DisabledSubscriptionController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mCategory:Landroidx/preference/PreferenceCategory;

.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 43
    iput p2, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mSubId:I

    .line 44
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 45
    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    return-void
.end method

.method private update()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mSubId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mCategory:Landroidx/preference/PreferenceCategory;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->update()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 0

    .line 49
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 50
    iput p2, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mSubId:I

    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 61
    iget-object p0, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DisabledSubscriptionController;->update()V

    return-void
.end method
