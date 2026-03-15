.class public Lcom/android/settings/network/telephony/MobileNetworkActivity;
.super Lcom/android/settings/core/SettingsBaseActivity;
.source "MobileNetworkActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;
    }
.end annotation


# static fields
.field static final MOBILE_SETTINGS_TAG:Ljava/lang/String; = "mobile_settings:"

.field static final SUB_ID_NULL:I = -0x80000000


# instance fields
.field mCurSubscriptionId:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneChangeReceiver:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

.field mSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/core/SettingsBaseActivity;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method private buildFragmentTag(I)Ljava/lang/String;
    .locals 1

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mobile_settings:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getSubscription()Landroid/telephony/SubscriptionInfo;
    .locals 4

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, -0x80000000

    const-string v2, "android.provider.extra.SUB_ID"

    .line 179
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 182
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 183
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, v0, :cond_0

    return-object v2

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method getSubscriptionId()I
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public synthetic lambda$updateBottomNavigationView$0$MobileNetworkActivity(Landroid/view/MenuItem;)Z
    .locals 1

    .line 224
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroidx/fragment/app/Fragment;I)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "settings_network_and_internet_v2"

    .line 91
    invoke-static {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d00e7

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0d00e6

    .line 94
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setContentView(I)V

    :goto_0
    const v0, 0x7f0a0292

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 97
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

    new-instance v1, Lcom/android/settings/network/telephony/MobileNetworkActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$2;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver$Client;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPhoneChangeReceiver:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

    .line 110
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 111
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_1

    const-string v2, "android.provider.extra.SUB_ID"

    .line 113
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 114
    :cond_1
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 121
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 82
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateSubscriptions(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->saveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPhoneChangeReceiver:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->register()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 133
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mPhoneChangeReceiver:Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity$PhoneChangeReceiver;->unregister()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method saveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 146
    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method switchFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 1

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroidx/fragment/app/Fragment;IZ)V

    return-void
.end method

.method switchFragment(Landroidx/fragment/app/Fragment;IZ)V
    .locals 2

    .line 237
    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    .line 242
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.provider.extra.SUB_ID"

    .line 244
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f0a0279

    .line 248
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->buildFragmentTag(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p3, v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 249
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 250
    iput p2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mCurSubscriptionId:I

    return-void
.end method

.method updateBottomNavigationView()V
    .locals 7

    const v0, 0x7f0a00b6

    .line 210
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 212
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const/16 p0, 0x8

    .line 213
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 216
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 217
    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 218
    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 219
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 220
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    .line 219
    invoke-interface {v1, v3, v6, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f08025a

    .line 221
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 223
    :cond_1
    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$1FLpiU2_opbERXks4DQsotzI_eQ;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MobileNetworkActivity$1FLpiU2_opbERXks4DQsotzI_eQ;-><init>(Lcom/android/settings/network/telephony/MobileNetworkActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    :goto_1
    return-void
.end method

.method updateSubscriptions(Landroid/os/Bundle;)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscription()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkActivity;->mSubscriptionInfos:Ljava/util/List;

    const-string v0, "settings_network_and_internet_v2"

    .line 161
    invoke-static {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->updateBottomNavigationView()V

    :cond_1
    if-nez p1, :cond_2

    .line 166
    new-instance p1, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    invoke-direct {p1}, Lcom/android/settings/network/telephony/MobileNetworkSettings;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkActivity;->switchFragment(Landroidx/fragment/app/Fragment;I)V

    :cond_2
    return-void
.end method
