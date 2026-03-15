.class public Lcom/android/settings/network/telephony/NetworkSelectSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkSelectSettings.java"


# instance fields
.field private final mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

.field mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mProgressHeader:Landroid/view/View;

.field mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

.field private mShow4GForLTE:Z

.field private mStatusMessagePreference:Landroidx/preference/Preference;

.field private mSubId:I

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseNewApi:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    .line 220
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    .line 263
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/NetworkSelectSettings;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->aggregateCellInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addConnectedNetworkOperatorPreference(Landroid/telephony/CellInfo;)V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 373
    new-instance v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V

    const p1, 0x7f120a0b

    .line 375
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 376
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 377
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2

    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 388
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 389
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 390
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 391
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private aggregateCellInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 401
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 402
    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorInfoFromCellInfo(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 406
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v2

    .line 408
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 413
    :cond_2
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 404
    :cond_3
    :goto_1
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 416
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private forceUpdateConnectedPreferenceCategory()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 321
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x1

    .line 323
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 325
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->wrapCellInfoWithCellIdentity(Landroid/telephony/CellIdentity;)Landroid/telephony/CellInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 333
    new-instance v1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 335
    invoke-static {v0, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getCurrentCarrierNameForDisplay(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f120a0b

    .line 337
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v0, 0x4

    .line 340
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setIcon(I)V

    .line 341
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 344
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 327
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 348
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method private stopNetworkQuery()V
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 421
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    if-eqz p0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->stopNetworkQuery()V

    :cond_0
    return-void
.end method

.method private updateConnectedPreferenceCategory()V
    .locals 3

    .line 359
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 360
    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 367
    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addConnectedNetworkOperatorPreference(Landroid/telephony/CellInfo;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSelectSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150031

    return p0
.end method

.method public synthetic lambda$onPreferenceTreeClick$0$NetworkSelectSettings(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 196
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 198
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110075

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mUseNewApi:Z

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const-string p1, "connected_network_operator_preference"

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "network_operators_preference"

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 103
    new-instance p1, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    .line 104
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 107
    new-instance p1, Lcom/android/settings/network/telephony/NetworkScanHelper;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settings/network/telephony/NetworkScanHelper;-><init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "carrier_config"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iget v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 110
    invoke-virtual {p1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "show_4g_for_lte_data_icon_bool"

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 429
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 165
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    check-cast p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 173
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getCellInfo()Landroid/telephony/CellInfo;

    move-result-object p1

    .line 174
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const v2, 0x7f120a0c

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x4ba

    const/4 v4, 0x0

    new-array v5, v4, [Landroid/util/Pair;

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mConnectedPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 182
    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 183
    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getCellInfo()Landroid/telephony/CellInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f120a18

    .line 185
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 189
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 191
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 193
    invoke-static {p1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getOperatorInfoFromCellInfo(Landroid/telephony/CellInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p1

    .line 194
    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$cqv1PWTVpc8AGLmf9S5E01O_vwA;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    return v1
.end method

.method public onStart()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateForbiddenPlmns()V

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 141
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mUseNewApi:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 140
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->startNetworkScan(I)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 159
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const p1, 0x7f0d0161

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0356

    .line 127
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->forceUpdateConnectedPreferenceCategory()V

    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 382
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method updateAllPreferenceCategory()V
    .locals 6

    .line 292
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateConnectedPreferenceCategory()V

    .line 294
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v0, 0x0

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellInfo;

    invoke-virtual {v1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    new-instance v1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    .line 298
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V

    .line 299
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-static {v2}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 301
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateForbiddenPlmns()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    return-void
.end method
