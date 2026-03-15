.class Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioInfoPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method private constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/RadioInfo;Lcom/android/settings/RadioInfo$1;)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;-><init>(Lcom/android/settings/RadioInfo;)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$902(Lcom/android/settings/RadioInfo;Z)Z

    .line 306
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 283
    iget-object p2, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p2}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    .line 284
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$500(Lcom/android/settings/RadioInfo;I)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCellInfoChanged: arrayCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1100(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1202(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    .line 313
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$1200(Lcom/android/settings/RadioInfo;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$1300(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$600(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 0

    .line 272
    iget-object p1, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    .line 273
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$702(Lcom/android/settings/RadioInfo;Z)Z

    .line 300
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$800(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 334
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$1800(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged: ServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1100(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1500(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V

    .line 326
    iget-object p1, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$1600(Lcom/android/settings/RadioInfo;)V

    .line 327
    iget-object p1, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    .line 328
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$1700(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSignalStrengthChanged: SignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$1100(Ljava/lang/String;)V

    .line 319
    iget-object p0, p0, Lcom/android/settings/RadioInfo$RadioInfoPhoneStateListener;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0, p1}, Lcom/android/settings/RadioInfo;->access$1400(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V

    return-void
.end method
