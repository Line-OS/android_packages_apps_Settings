.class Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFaceForUserAndFinish(ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$RemovalTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

.field final synthetic val$tracker:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$RemovalTracker;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$RemovalTracker;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->val$userId:I

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->val$tracker:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$RemovalTracker;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 889
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    const/4 p1, 0x1

    aput-object p3, p0, p1

    const-string p1, "Can\'t remove face %d. Reason: %s"

    .line 888
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChooseLockGenericFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 894
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->this$0:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->val$userId:I

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$2;->val$tracker:Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$RemovalTracker;

    invoke-static {p1, p2, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$200(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;ILcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$RemovalTracker;)V

    :cond_0
    return-void
.end method
