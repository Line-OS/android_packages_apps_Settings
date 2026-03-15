.class Lcom/android/settings/sim/SimSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;I)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    iput p2, p0, Lcom/android/settings/sim/SimSettings$2;->val$i:I

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 252
    iget-object p2, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p2}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object p2

    iget v0, p0, Lcom/android/settings/sim/SimSettings$2;->val$i:I

    aput p1, p2, v0

    .line 253
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings$2;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {p0}, Lcom/android/settings/sim/SimSettings;->access$200(Lcom/android/settings/sim/SimSettings;)V

    return-void
.end method
