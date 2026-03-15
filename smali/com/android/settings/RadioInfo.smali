.class public Lcom/android/settings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;
    }
.end annotation


# static fields
.field private static final mCellInfoRefreshRateLabels:[Ljava/lang/String;

.field private static final mCellInfoRefreshRates:[I

.field private static mPhoneIndexLabels:[Ljava/lang/String;

.field private static final mPreferredNetworkLabels:[Ljava/lang/String;


# instance fields
.field private callState:Landroid/widget/TextView;

.field private carrierProvisioningButton:Landroid/widget/Button;

.field private cbrsDataSwitch:Landroid/widget/Switch;

.field private cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

.field private dBm:Landroid/widget/TextView;

.field private dataNetwork:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private dsdsSwitch:Landroid/widget/Switch;

.field private eabProvisionedSwitch:Landroid/widget/Switch;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsVolteProvisionedSwitch:Landroid/widget/Switch;

.field private imsVtProvisionedSwitch:Landroid/widget/Switch;

.field private imsWfcProvisionedSwitch:Landroid/widget/Switch;

.field mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

.field mCbrsDataSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCellInfoRefreshRateIndex:I

.field private mCellInfoResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocationResult:Landroid/telephony/CellLocation;

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDds:Landroid/widget/TextView;

.field private final mDefaultNetworkRequest:Landroid/net/NetworkRequest;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mDownlinkKbps:Landroid/widget/TextView;

.field mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLocation:Landroid/widget/TextView;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field mOnDsdsDialogConfirmedListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhyChanConfig:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostnameResultV4:Ljava/lang/String;

.field private mPingHostnameResultV6:Ljava/lang/String;

.field private mPingHostnameV4:Landroid/widget/TextView;

.field private mPingHostnameV6:Landroid/widget/TextView;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkTypeResult:I

.field mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSelectPhoneIndex:Landroid/widget/Spinner;

.field mSelectPhoneIndexHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSelectedPhoneIndex:I

.field private mSubscriberId:Landroid/widget/TextView;

.field private mSubscriptionId:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mUplinkKbps:Landroid/widget/TextView;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerOnSwitch:Landroid/widget/Switch;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private smsc:Landroid/widget/EditText;

.field private triggercarrierProvisioningButton:Landroid/widget/Button;

.field private updateSmscButton:Landroid/widget/Button;

.field private voiceNetwork:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "WCDMA preferred"

    const-string v1, "GSM only"

    const-string v2, "WCDMA only"

    const-string v3, "GSM auto (PRL)"

    const-string v4, "CDMA auto (PRL)"

    const-string v5, "CDMA only"

    const-string v6, "EvDo only"

    const-string v7, "Global auto (PRL)"

    const-string v8, "LTE/CDMA auto (PRL)"

    const-string v9, "LTE/UMTS auto (PRL)"

    const-string v10, "LTE/CDMA/UMTS auto (PRL)"

    const-string v11, "LTE only"

    const-string v12, "LTE/WCDMA"

    const-string v13, "TD-SCDMA only"

    const-string v14, "TD-SCDMA/WCDMA"

    const-string v15, "LTE/TD-SCDMA"

    const-string v16, "TD-SCDMA/GSM"

    const-string v17, "TD-SCDMA/UMTS"

    const-string v18, "LTE/TD-SCDMA/WCDMA"

    const-string v19, "LTE/TD-SCDMA/UMTS"

    const-string v20, "TD-SCDMA/CDMA/UMTS"

    const-string v21, "Global/TD-SCDMA"

    const-string v22, "Unknown"

    .line 103
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    const-string v0, "Disabled"

    const-string v1, "Immediate"

    const-string v2, "Min 5s"

    const-string v3, "Min 10s"

    const-string v4, "Min 60s"

    .line 155
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateLabels:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 164
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRates:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x1388
        0x2710
        0xea60
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 100
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 239
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    .line 244
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    .line 247
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    .line 248
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    .line 254
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 255
    invoke-virtual {v2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 256
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mDefaultNetworkRequest:Landroid/net/NetworkRequest;

    .line 259
    new-instance v1, Lcom/android/settings/RadioInfo$1;

    invoke-direct {v1, p0}, Lcom/android/settings/RadioInfo$1;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 268
    new-instance v1, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;-><init>(Lcom/android/settings/RadioInfo;Lcom/android/settings/RadioInfo$1;)V

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 379
    new-instance v0, Lcom/android/settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$2;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 1240
    new-instance v0, Lcom/android/settings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$8;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1254
    new-instance v0, Lcom/android/settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$9;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1268
    new-instance v0, Lcom/android/settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$10;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1283
    new-instance v0, Lcom/android/settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$11;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1317
    new-instance v0, Lcom/android/settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$12;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1326
    new-instance v0, Lcom/android/settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$13;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1393
    new-instance v0, Lcom/android/settings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$15;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1409
    new-instance v0, Lcom/android/settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$16;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1424
    new-instance v0, Lcom/android/settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$17;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1439
    new-instance v0, Lcom/android/settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$18;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1450
    new-instance v0, Lcom/android/settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$19;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1520
    new-instance v0, Lcom/android/settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$20;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1528
    new-instance v0, Lcom/android/settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$21;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1541
    new-instance v0, Lcom/android/settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$22;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1547
    new-instance v0, Lcom/android/settings/RadioInfo$23;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$23;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1555
    new-instance v0, Lcom/android/settings/RadioInfo$24;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$24;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1561
    new-instance v0, Lcom/android/settings/RadioInfo$25;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$25;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    .line 1571
    new-instance v0, Lcom/android/settings/RadioInfo$26;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$26;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    .line 1581
    new-instance v0, Lcom/android/settings/RadioInfo$27;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$27;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1610
    new-instance v0, Lcom/android/settings/RadioInfo$28;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$28;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectPhoneIndexHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1636
    new-instance v0, Lcom/android/settings/RadioInfo$29;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$29;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1675
    new-instance v0, Lcom/android/settings/RadioInfo$31;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$31;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCbrsDataSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1713
    new-instance v0, Lcom/android/settings/RadioInfo$32;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$32;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mOnDsdsDialogConfirmedListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RadioInfo;II)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RadioInfo;->updateBandwidths(II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/RadioInfo;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateRadioPowerState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsProvisionedState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePhysicalChannelConfiguration(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/RadioInfo;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePreferredNetworkType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/settings/RadioInfo;)Landroid/telephony/CellLocation;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/settings/RadioInfo;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/settings/RadioInfo;)Z
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/RadioInfo;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    return p0
.end method

.method static synthetic access$4002(Lcom/android/settings/RadioInfo;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    return p1
.end method

.method static synthetic access$4100()[Ljava/lang/String;
    .locals 1

    .line 100
    sget-object v0, Lcom/android/settings/RadioInfo;->mPhoneIndexLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/settings/RadioInfo;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/settings/RadioInfo;->mSelectedPhoneIndex:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/settings/RadioInfo;II)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RadioInfo;->updatePhoneIndex(II)V

    return-void
.end method

.method static synthetic access$4402(Lcom/android/settings/RadioInfo;I)I
    .locals 0

    .line 100
    iput p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    return p1
.end method

.method static synthetic access$4500()[I
    .locals 1

    .line 100
    sget-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRates:[I

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateAllCellInfo()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/settings/RadioInfo;)Landroid/widget/Switch;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->cbrsDataSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/settings/RadioInfo;)Landroid/widget/Switch;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->dsdsSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->performDsdsSwitch()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/RadioInfo;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePhoneState(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method private final buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;
    .locals 4

    .line 864
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    .line 865
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    .line 868
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 869
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 870
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 871
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v2, v0

    .line 872
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v2, v0

    .line 873
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, v2, v0

    .line 874
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v2, v0

    .line 875
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v2, v0

    .line 876
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    aput-object p0, v2, p1

    const-string p0, "%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s"

    .line 867
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final buildCellInfoString(Ljava/util/List;)Ljava/lang/String;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 929
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_8

    .line 936
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 938
    instance-of v8, v7, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_1

    .line 939
    check-cast v7, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, v7}, Lcom/android/settings/RadioInfo;->buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 940
    :cond_1
    instance-of v8, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v8, :cond_2

    .line 941
    check-cast v7, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, v7}, Lcom/android/settings/RadioInfo;->buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 942
    :cond_2
    instance-of v8, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v8, :cond_3

    .line 943
    check-cast v7, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, v7}, Lcom/android/settings/RadioInfo;->buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 944
    :cond_3
    instance-of v8, v7, Landroid/telephony/CellInfoCdma;

    if-eqz v8, :cond_0

    .line 945
    check-cast v7, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, v7}, Lcom/android/settings/RadioInfo;->buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 948
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v6, 0x9

    const-string v7, "CID"

    const-string v8, "MNC"

    const-string v9, "MCC"

    const/16 v10, 0x8

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x1

    const-string v18, "SRV"

    const/16 v19, 0x0

    if-eqz v0, :cond_5

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v18, v1, v19

    aput-object v9, v1, v17

    aput-object v8, v1, v16

    const-string v20, "TAC"

    aput-object v20, v1, v15

    aput-object v7, v1, v14

    const-string v20, "PCI"

    aput-object v20, v1, v13

    const-string v20, "EARFCN"

    aput-object v20, v1, v12

    const-string v20, "BW"

    aput-object v20, v1, v11

    const-string v20, "RSRP"

    aput-object v20, v1, v10

    const-string v20, "RSRQ"

    aput-object v20, v1, v6

    const/16 v20, 0xa

    const-string v21, "TA"

    aput-object v21, v1, v20

    const-string v6, "LTE\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 956
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v4, "LAC"

    if-eqz v0, :cond_6

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v18, v1, v19

    aput-object v9, v1, v17

    aput-object v8, v1, v16

    aput-object v4, v1, v15

    aput-object v7, v1, v14

    const-string v6, "UARFCN"

    aput-object v6, v1, v13

    const-string v6, "PSC"

    aput-object v6, v1, v12

    const-string v6, "RSCP"

    aput-object v6, v1, v11

    const-string v6, "WCDMA\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 962
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v10, [Ljava/lang/Object;

    aput-object v18, v1, v19

    aput-object v9, v1, v17

    aput-object v8, v1, v16

    aput-object v4, v1, v15

    aput-object v7, v1, v14

    const-string v4, "ARFCN"

    aput-object v4, v1, v13

    const-string v4, "BSIC"

    aput-object v4, v1, v12

    const-string v4, "RSSI"

    aput-object v4, v1, v11

    const-string v4, "GSM\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 968
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v18, v1, v19

    const-string v3, "SID"

    aput-object v3, v1, v17

    const-string v3, "NID"

    aput-object v3, v1, v16

    const-string v3, "BSID"

    aput-object v3, v1, v15

    const-string v3, "C-RSSI"

    aput-object v3, v1, v14

    const-string v3, "C-ECIO"

    aput-object v3, v1, v13

    const-string v3, "E-RSSI"

    aput-object v3, v1, v12

    const-string v3, "E-ECIO"

    aput-object v3, v1, v11

    const-string v3, "E-SNR"

    aput-object v3, v1, v10

    const-string v3, "CDMA/EVDO\n%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s\n"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    const-string v1, "unknown"

    .line 978
    :cond_9
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;
    .locals 4

    .line 880
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 881
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    .line 884
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 885
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 886
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 887
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 888
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    .line 889
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x5

    aput-object p1, v2, v3

    .line 890
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v2, v0

    .line 891
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    aput-object p0, v2, p1

    const-string p0, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    .line 883
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;
    .locals 4

    .line 895
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    .line 896
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    .line 900
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 901
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 902
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 903
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 904
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    .line 905
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x5

    aput-object p1, v2, v3

    .line 906
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x6

    aput-object p1, v2, v3

    .line 907
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v2, v0

    .line 908
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    aput-object p1, v2, v0

    .line 909
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    aput-object p1, v2, v0

    .line 910
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    aput-object p0, v2, p1

    const-string p0, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    .line 898
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;
    .locals 4

    .line 914
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    .line 915
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    .line 918
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 919
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 920
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 921
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    aput-object p1, v2, v3

    .line 922
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v2, v3

    .line 923
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x5

    aput-object p1, v2, v3

    .line 924
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v2, v0

    .line 925
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    aput-object p0, v2, p1

    const-string p0, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    .line 917
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private dsdsModeOnly()Z
    .locals 2

    const-string p0, "ro.boot.hardware.dsds"

    .line 1709
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1710
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final getCellInfoDisplayString(I)Ljava/lang/String;
    .locals 0

    const p0, 0x7fffffff

    if-eq p1, p0, :cond_0

    .line 834
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private final getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 2

    .line 846
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result p0

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string p0, "R"

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 849
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const v1, 0x7fffffff

    move-object p1, v0

    goto :goto_1

    :cond_1
    const-string p1, "S"

    goto :goto_1

    :cond_2
    const-string p1, "P"

    goto :goto_1

    :cond_3
    const-string p1, "N"

    .line 856
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "+"

    .line 860
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPhoneIndexLabels(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 4

    .line 715
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    .line 716
    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private httpClientTest()V
    .locals 3

    const/4 v0, 0x0

    .line 1158
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1160
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    const-string v0, "Pass"

    .line 1161
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_0

    .line 1163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail: Code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 1169
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    :goto_1
    :try_start_2
    const-string v1, "Fail: IOException"

    .line 1166
    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 1169
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0
.end method

.method private static isDsdsEnabled()Z
    .locals 2

    .line 1698
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isDsdsSupported()Z
    .locals 1

    .line 1693
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isEabEnabledByPlatform(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "carrier_config"

    .line 1479
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    .line 1480
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "use_rcs_presence_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEabProvisioned()Z
    .locals 2

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 1447
    invoke-direct {p0, v0, v1}, Lcom/android/settings/RadioInfo;->isFeatureProvisioned(IZ)Z

    move-result p0

    return p0
.end method

.method private isFeatureProvisioned(IZ)Z
    .locals 2

    .line 1459
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz p0, :cond_1

    .line 1461
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1464
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result p0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RadioInfo"

    const-string v1, "isFeatureProvisioned() exception:"

    .line 1468
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1472
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isFeatureProvisioned() featureId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " provisioned="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    return p2
.end method

.method private isImsVolteProvisioned()Z
    .locals 3

    .line 1402
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v2, :cond_0

    .line 1403
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isImsVtProvisioned()Z
    .locals 3

    .line 1417
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v2, :cond_0

    .line 1418
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1419
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isImsWfcProvisioned()Z
    .locals 3

    .line 1432
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v2, :cond_0

    .line 1433
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1434
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isRadioOn()Z
    .locals 1

    .line 1346
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RadioInfo"

    .line 173
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private performDsdsSwitch()V
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->dsdsSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    return-void
.end method

.method private final pingHostname()V
    .locals 7

    const-string v0, "Pass"

    const-string v1, "Fail(%d)"

    const-string v2, "Fail: IOException"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1125
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "ping -c 1 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 1126
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_0

    .line 1128
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-array v6, v4, [Ljava/lang/Object;

    .line 1130
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1133
    :catch_0
    :try_start_1
    iput-object v2, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1136
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "ping6 -c 1 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 1137
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_1

    .line 1139
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    .line 1141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1144
    :catch_1
    :try_start_3
    iput-object v2, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    const-string v0, "Fail: InterruptedException"

    .line 1147
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private refreshSmsc()V
    .locals 2

    .line 1176
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method private registerPhoneStateListener()V
    .locals 2

    .line 748
    new-instance v0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;-><init>(Lcom/android/settings/RadioInfo;Lcom/android/settings/RadioInfo$1;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 749
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v1, 0x1005fd

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private restoreFromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    const-string v1, "mPingHostnameResultV4"

    .line 641
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    const-string v1, "mPingHostnameResultV6"

    .line 642
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    const-string v1, "mHttpClientTestResult"

    .line 643
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "mPreferredNetworkTypeResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    const/4 v0, 0x0

    const-string v1, "mSelectedPhoneIndex"

    .line 652
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/RadioInfo;->mSelectedPhoneIndex:I

    const-string v1, "mCellInfoRefreshRateIndex"

    .line 654
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    return-void
.end method

.method private showDsdsChangeDialog()V
    .locals 3

    .line 1683
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120606

    .line 1684
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120605

    .line 1685
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mOnDsdsDialogConfirmedListener:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f120604

    .line 1686
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mOnDsdsDialogConfirmedListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f120603

    .line 1687
    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1688
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 1689
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private unregisterPhoneStateListener()V
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 727
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    .line 736
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    .line 738
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateAllCellInfo()V
    .locals 2

    .line 1181
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    new-instance v0, Lcom/android/settings/RadioInfo$3;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$3;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 1191
    new-instance v1, Lcom/android/settings/RadioInfo$4;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$4;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1200
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateAllFields()V
    .locals 4

    .line 574
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    .line 575
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    .line 576
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    .line 577
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    .line 578
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateRadioPowerState()V

    .line 579
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsProvisionedState()V

    .line 580
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateProperties()V

    .line 581
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    .line 582
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    .line 584
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 585
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    .line 586
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateSubscriptionIds()V

    .line 588
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 594
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 597
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 601
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectPhoneIndex:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->mSelectedPhoneIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 602
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectPhoneIndex:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mSelectPhoneIndexHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 606
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 607
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->isCbrsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cbrsDataSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getCbrsDataState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 612
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cbrsDataSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCbrsDataSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->unregisterPhoneStateListener()V

    .line 616
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->registerPhoneStateListener()V

    .line 618
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mDefaultNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 621
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method private updateBandwidths(II)V
    .locals 4

    const v0, 0x7fffffff

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    if-ltz p2, :cond_2

    if-ne p2, v0, :cond_3

    :cond_2
    move p2, v1

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mDownlinkKbps:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%-5d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mUplinkKbps:Landroid/widget/TextView;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateCallRedirect()V
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->buildCellInfoString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateDataState()V
    .locals 4

    .line 1053
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 1054
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120bf6

    .line 1055
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f120be3

    .line 1068
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f120be0

    .line 1059
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v0, 0x7f120be1

    .line 1062
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const v0, 0x7f120be2

    .line 1065
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1072
    :goto_0
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateDataStats2()V
    .locals 12

    .line 1105
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1107
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 1108
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 1109
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 1110
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    const v9, 0x7f120be7

    .line 1112
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f120be5

    .line 1113
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1115
    iget-object v10, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDnsCheckState()V
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "0.0.0.0 allowed"

    goto :goto_0

    :cond_0
    const-string p0, "0.0.0.0 not allowed"

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateImsProvisionedState()V
    .locals 5

    .line 1489
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsProvisionedState isImsVolteProvisioned()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVolteProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1496
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVolteProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1497
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1498
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1499
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1498
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1501
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1502
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVtProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1503
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1504
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1505
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 1504
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1507
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1508
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsWfcProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1509
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1510
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1511
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    .line 1510
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1513
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1514
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isEabProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1515
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1516
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1517
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->isEabEnabledByPlatform(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    .line 1516
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 8

    .line 795
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 796
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, -0x1

    const-string v3, "unknown"

    if-eqz v1, :cond_2

    .line 797
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 798
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 799
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    .line 800
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f120be8

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 801
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120bdf

    .line 803
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 804
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 800
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 805
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 806
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 807
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 808
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 809
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    .line 810
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v5

    .line 811
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p1

    .line 812
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_3

    move-object v0, v3

    goto :goto_2

    .line 813
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   SID = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_4

    move-object v0, v3

    goto :goto_3

    .line 816
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   NID = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v2, :cond_5

    move-object v0, v3

    goto :goto_4

    .line 819
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nLAT = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v5, v2, :cond_6

    move-object v0, v3

    goto :goto_5

    .line 822
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   LONG = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v2, :cond_7

    goto :goto_6

    .line 825
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 812
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 827
    :cond_8
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method

.method private final updateMessageWaiting()V
    .locals 1

    .line 992
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateNetworkType()V
    .locals 2

    .line 1076
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    .line 1078
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1079
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 1078
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1081
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p0

    .line 1080
    invoke-static {p0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePhoneIndex(II)V
    .locals 2

    .line 366
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->unregisterPhoneStateListener()V

    .line 367
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 370
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 373
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 374
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 376
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateAllFields()V

    return-void
.end method

.method private final updatePhoneState(I)V
    .locals 3

    .line 1033
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120bf6

    .line 1034
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f120bee

    .line 1044
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const p1, 0x7f120bef

    .line 1041
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const p1, 0x7f120bed

    .line 1038
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1048
    :goto_0
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePhysicalChannelConfiguration(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 344
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhysicalChannelConfig;

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    :cond_0
    const-string p1, "}"

    .line 349
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updatePingState()V
    .locals 2

    .line 1205
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120bf6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 1206
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 1207
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 1209
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    new-instance v0, Lcom/android/settings/RadioInfo$5;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$5;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 1221
    new-instance v1, Lcom/android/settings/RadioInfo$6;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$6;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1228
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1230
    new-instance v1, Lcom/android/settings/RadioInfo$7;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$7;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1237
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updatePreferredNetworkType(I)V
    .locals 3

    .line 354
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 357
    sget-object p1, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v1

    .line 359
    :cond_1
    iput p1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 361
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget p0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    invoke-virtual {p1, p0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    return-void
.end method

.method private final updateProperties()V
    .locals 4

    .line 1088
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120bf6

    if-nez v1, :cond_0

    .line 1091
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1092
    :cond_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1095
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1096
    :cond_1
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mSubscriberId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1099
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1100
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1101
    :cond_2
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateRadioPowerState()V
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1353
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1354
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private final updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 1003
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1004
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120bf6

    .line 1005
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f120bf4

    .line 1016
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f120bf2

    .line 1013
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v0, 0x7f120bf3

    .line 1009
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1020
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1023
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v1, 0x7f120bf0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1025
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v1, 0x7f120bf1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1028
    :goto_1
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 4

    .line 780
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 782
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    .line 784
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result p1

    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 788
    :cond_0
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f120be6

    .line 789
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f120be4

    .line 791
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateSubscriptionIds()V
    .locals 2

    .line 986
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mSubscriptionId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mDds:Landroid/widget/TextView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method getCbrsDataState()Z
    .locals 2

    .line 1668
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    .line 1669
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isOpportunisticNetworkEnabled()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1671
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCbrsDataState() state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const-string v1, "on"

    goto :goto_1

    :cond_1
    const-string v1, "off"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method isCbrsSupported()Z
    .locals 1

    .line 1650
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110040

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$onCreate$0$RadioInfo(Landroid/view/View;)V
    .locals 0

    .line 511
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 513
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->dsdsSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    .line 514
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->showDsdsChangeDialog()V

    goto :goto_0

    .line 516
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->performDsdsSwitch()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 424
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 425
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "RadioInfo"

    const-string v0, "Not run from system user, don\'t do anything."

    .line 426
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d0163

    .line 431
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const-string v0, "Started onCreate"

    .line 433
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    const-string v0, "phone"

    .line 435
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    .line 436
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 437
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 439
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v1

    .line 439
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 442
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->getPhoneIndexLabels(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->mPhoneIndexLabels:[Ljava/lang/String;

    const v0, 0x7f0a021f

    .line 444
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    const v0, 0x7f0a02ef

    .line 445
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    const v0, 0x7f0a0420

    .line 446
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSubscriptionId:Landroid/widget/TextView;

    const v0, 0x7f0a0141

    .line 447
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDds:Landroid/widget/TextView;

    const v0, 0x7f0a0226

    .line 448
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSubscriberId:Landroid/widget/TextView;

    const v0, 0x7f0a00da

    .line 449
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    const v0, 0x7f0a02fb

    .line 450
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    const v0, 0x7f0a038b

    .line 451
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v0, 0x7f0a01d8

    .line 452
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    const v0, 0x7f0a01d3

    .line 453
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    const v0, 0x7f0a04c2

    .line 454
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    const v0, 0x7f0a0132

    .line 455
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    const v0, 0x7f0a0140

    .line 456
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    const v0, 0x7f0a02cd

    .line 457
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    const v0, 0x7f0a00ee

    .line 458
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    const v0, 0x7f0a0270

    .line 459
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const v0, 0x7f0a00e8

    .line 460
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 461
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a03c0

    .line 463
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    const v0, 0x7f0a0371

    .line 464
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    const v0, 0x7f0a03f1

    .line 465
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    const v0, 0x7f0a016c

    .line 466
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    const v0, 0x7f0a0331

    .line 467
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    const v0, 0x7f0a0332

    .line 468
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    const v0, 0x7f0a020f

    .line 469
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    const v0, 0x7f0a032d

    .line 471
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    const v0, 0x7f0a033b

    .line 473
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 474
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 477
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 478
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a032a

    .line 480
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectPhoneIndex:Landroid/widget/Spinner;

    .line 481
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v3, Lcom/android/settings/RadioInfo;->mPhoneIndexLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 483
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 484
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mSelectPhoneIndex:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a00e6

    .line 486
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    .line 487
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v3, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 489
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 490
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a04c5

    .line 492
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a04cd

    .line 493
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a04d0

    .line 494
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0179

    .line 495
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    .line 497
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0a00e4

    .line 504
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->cbrsDataSwitch:Landroid/widget/Switch;

    .line 505
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cbrsDataSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->isCbrsSupported()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    const v0, 0x7f0a0178

    .line 507
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dsdsSwitch:Landroid/widget/Switch;

    .line 508
    invoke-static {}, Lcom/android/settings/RadioInfo;->isDsdsSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->dsdsModeOnly()Z

    move-result v0

    if-nez v0, :cond_3

    .line 509
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dsdsSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dsdsSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/settings/-$$Lambda$RadioInfo$MzQ2bHQOQFnvOmXJsSU2LQwpqC0;

    invoke-direct {v1, p0}, Lcom/android/settings/-$$Lambda$RadioInfo$MzQ2bHQOQFnvOmXJsSU2LQwpqC0;-><init>(Lcom/android/settings/RadioInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dsdsSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/settings/RadioInfo;->isDsdsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dsdsSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a0370

    .line 524
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    const v0, 0x7f0a0169

    .line 526
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDownlinkKbps:Landroid/widget/TextView;

    const v0, 0x7f0a0494

    .line 527
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUplinkKbps:Landroid/widget/TextView;

    .line 528
    invoke-direct {p0, v3, v3}, Lcom/android/settings/RadioInfo;->updateBandwidths(II)V

    const v0, 0x7f0a0333

    .line 530
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 531
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a04a2

    .line 532
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 533
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0374

    .line 534
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 535
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a016d

    .line 536
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 537
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00e3

    .line 538
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->carrierProvisioningButton:Landroid/widget/Button;

    .line 539
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->carrierProvisioningButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0486

    .line 540
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->triggercarrierProvisioningButton:Landroid/widget/Button;

    .line 541
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->triggercarrierProvisioningButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f2

    .line 544
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 545
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 547
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 549
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 550
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 553
    :cond_4
    iput v3, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    .line 554
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 555
    iput v3, p0, Lcom/android/settings/RadioInfo;->mSelectedPhoneIndex:I

    .line 558
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    .line 559
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 558
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 561
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->restoreFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f120bf8

    .line 671
    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 672
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x62

    .line 673
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v1, 0x1

    const v2, 0x7f120bea

    .line 674
    invoke-interface {p1, v1, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 675
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f120beb

    .line 676
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 677
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v2, 0x3

    const v3, 0x7f120bec

    .line 678
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 679
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 680
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isImsSupportedOnDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    const v3, 0x7f120be9

    .line 681
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 682
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    const/4 v2, 0x5

    const v3, 0x7f120bfe

    .line 684
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 685
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return v1
.end method

.method protected onPause()V
    .locals 3

    .line 626
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause: unregister phone & data intents"

    .line 628
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x5

    .line 692
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 693
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const p0, 0x7f120bfe

    .line 699
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const p0, 0x7f120bff

    .line 702
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    move p0, v0

    .line 708
    :goto_1
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v0
.end method

.method protected onResume()V
    .locals 1

    .line 566
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "Started onResume"

    .line 568
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 570
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateAllFields()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    const-string v1, "mPingHostnameResultV4"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    const-string v1, "mPingHostnameResultV6"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    const-string v1, "mHttpClientTestResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    iget v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    const-string v1, "mPreferredNetworkTypeResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 664
    iget v0, p0, Lcom/android/settings/RadioInfo;->mSelectedPhoneIndex:I

    const-string v1, "mSelectedPhoneIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 665
    iget p0, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    const-string v0, "mCellInfoRefreshRateIndex"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method setEabProvisionedState(Z)V
    .locals 2

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEabProvisioned() state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x19

    .line 1374
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    return-void
.end method

.method setImsConfigProvisionedState(IZ)V
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1379
    new-instance v0, Lcom/android/settings/RadioInfo$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/RadioInfo$14;-><init>(Lcom/android/settings/RadioInfo;IZ)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method setImsVolteProvisionedState(Z)V
    .locals 2

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsVolteProvisioned state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 1359
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    return-void
.end method

.method setImsVtProvisionedState(Z)V
    .locals 2

    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsVtProvisioned() state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 1364
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    return-void
.end method

.method setImsWfcProvisionedState(Z)V
    .locals 2

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImsWfcProvisioned() state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1c

    .line 1369
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    return-void
.end method

.method updateCbrsDataState(Z)V
    .locals 2

    .line 1655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCbrsDataSwitchState() state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 1657
    new-instance v0, Lcom/android/settings/RadioInfo$30;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/RadioInfo$30;-><init>(Lcom/android/settings/RadioInfo;Z)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    :cond_1
    return-void
.end method
