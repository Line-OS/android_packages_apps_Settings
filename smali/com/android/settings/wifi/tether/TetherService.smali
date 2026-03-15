.class public Lcom/android/settings/wifi/tether/TetherService;
.super Landroid/app/Service;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EXTRA_RESULT:Ljava/lang/String; = "EntitlementResult"

.field public static final EXTRA_SUBID:Ljava/lang/String; = "subId"


# instance fields
.field private mCurrentTethers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentTypeIndex:I

.field private mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

.field private mInProvisionCheck:Z

.field private mPendingCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/os/ResultReceiver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TetherService"

    const/4 v1, 0x3

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 363
    new-instance v0, Lcom/android/settings/wifi/tether/TetherService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherService$2;-><init>(Lcom/android/settings/wifi/tether/TetherService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/TetherService;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/tether/TetherService;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/TetherService;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    return p0
.end method

.method static synthetic access$204(Lcom/android/settings/wifi/tether/TetherService;)I
    .locals 1

    .line 52
    iget v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/TetherService;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->disableWifiTethering()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->disableBtTethering()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/tether/TetherService;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->disableUsbTethering()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/tether/TetherService;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/TetherService;->fireCallbacksForType(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/tether/TetherService;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->startProvisioning(I)V

    return-void
.end method

.method public static cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V
    .locals 2

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extraRemTetherType"

    .line 331
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private disableBtTethering()V
    .locals 3

    .line 247
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v1, Lcom/android/settings/wifi/tether/TetherService$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/tether/TetherService$1;-><init>(Lcom/android/settings/wifi/tether/TetherService;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method private disableUsbTethering()V
    .locals 1

    const-string v0, "connectivity"

    .line 242
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    return-void
.end method

.method private disableWifiTethering()V
    .locals 1

    const-string v0, "connectivity"

    .line 236
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method

.method private fireCallbacksForType(II)V
    .locals 3

    .line 350
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 356
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    .line 357
    sget-boolean v1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Firing result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TetherService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    .line 358
    invoke-virtual {v0, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 360
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private getProvisionBroadcastIntent(I)Landroid/content/Intent;
    .locals 3

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->getResourceForActiveDataSubId()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->getTetherServiceWrapper()Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;->getActiveDataSubscriptionId()I

    move-result v1

    .line 279
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string p1, "TETHER_TYPE"

    .line 281
    invoke-virtual {v2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 282
    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x11000000

    .line 283
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v2
.end method

.method private getTetherServiceWrapper()Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    .line 413
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    return-object p0
.end method

.method private removeTypeAtIndex(I)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 199
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentTypeIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetherService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    if-gt p1, v0, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 201
    iput v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    :cond_1
    return-void
.end method

.method private setEntitlementAppActive(I)V
    .locals 3

    .line 290
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->getProvisionBroadcastIntent(I)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x20000

    .line 293
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "TetherService"

    const-string p1, "No found BroadcastReceivers for provision intent."

    .line 295
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 299
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 300
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->getTetherServiceWrapper()Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;->setAppInactive(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private startProvisioning(I)V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 264
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->getProvisionBroadcastIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 265
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->setEntitlementAppActive(I)V

    .line 267
    sget-boolean v1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending provisioning broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TetherService"

    .line 267
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    :cond_1
    return-void
.end method

.method private stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 215
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 216
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 226
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unregisterReceivers()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->unregister()V

    return-void
.end method


# virtual methods
.method cancelAlarmIfNecessary()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "TetherService"

    if-eqz v0, :cond_1

    .line 338
    sget-boolean p0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Tethering still active, not cancelling alarm"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 341
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 342
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "alarm"

    .line 343
    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 344
    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 345
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Tethering no longer active, canceling recheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->unregister()V

    return-void
.end method

.method getResourceForActiveDataSubId()Landroid/content/res/Resources;
    .locals 1

    .line 441
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->getTetherServiceWrapper()Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;->getActiveDataSubscriptionId()I

    move-result v0

    .line 442
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 86
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "Creating TetherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->getResourceForActiveDataSubId()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "tetherPrefs"

    .line 92
    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "currentTethers"

    const-string v3, ""

    .line 93
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/tether/TetherService;->stringToTethers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    .line 94
    iput v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    .line 95
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    .line 96
    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/HotspotOffReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 178
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    const-string v1, "TetherService"

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TetherService getting destroyed while mid-provisioning"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    .line 180
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const-string v2, "tetherPrefs"

    .line 182
    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/tether/TetherService;->tethersToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "currentTethers"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->unregisterReceivers()V

    .line 186
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Destroying TetherService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const-string p2, "subId"

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "TetherService"

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 108
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/TetherService;->getTetherServiceWrapper()Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;->getActiveDataSubscriptionId()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This Provisioning request is outdated, current subId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez p1, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return v1

    :cond_1
    const-string p2, "extraAddTetherType"

    .line 117
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 118
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "extraProvisionCallback"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_3

    .line 123
    iget-object v5, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_2

    .line 125
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 128
    invoke-virtual {v0, v4, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v1

    .line 134
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding tether "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p2, "extraRemTetherType"

    .line 140
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez v0, :cond_8

    .line 142
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 144
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 145
    sget-boolean v2, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing tether "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", index "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-ltz v0, :cond_7

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/TetherService;->removeTypeAtIndex(I)V

    .line 149
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->cancelAlarmIfNecessary()V

    goto :goto_1

    .line 151
    :cond_8
    sget-boolean p2, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz p2, :cond_9

    const-string p2, "Don\'t cancel alarm during provisioning"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    const/4 p2, 0x0

    const-string v0, "extraSetAlarm"

    .line 158
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->scheduleAlarm()V

    :cond_a
    const-string v0, "extraRunProvision"

    .line 163
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 164
    iget p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->startProvisioning(I)V

    goto :goto_2

    .line 165
    :cond_b
    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez p1, :cond_d

    .line 167
    sget-boolean p1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Stopping self.  startid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_c
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v1

    :cond_d
    :goto_2
    const/4 p0, 0x3

    return p0
.end method

.method scheduleAlarm()V
    .locals 9

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/tether/TetherService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extraRunProvision"

    const/4 v2, 0x1

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 312
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const-string v0, "alarm"

    .line 313
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/AlarmManager;

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/TetherService;->getResourceForActiveDataSubId()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v6, v0

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long v4, v0, v6

    .line 318
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling alarm at interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TetherService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x3

    .line 319
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 321
    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/HotspotOffReceiver;->register()V

    return-void
.end method

.method setHotspotOffReceiver(Lcom/android/settings/wifi/tether/HotspotOffReceiver;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mHotspotReceiver:Lcom/android/settings/wifi/tether/HotspotOffReceiver;

    return-void
.end method

.method setTetherServiceWrapper(Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    return-void
.end method
