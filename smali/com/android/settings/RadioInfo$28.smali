.class Lcom/android/settings/RadioInfo$28;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1611
    iput-object p1, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-ltz p3, :cond_2

    .line 1614
    invoke-static {}, Lcom/android/settings/RadioInfo;->access$4100()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-gt p3, p1, :cond_2

    .line 1617
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1618
    array-length p1, p1

    if-gt p1, p3, :cond_0

    goto :goto_0

    .line 1622
    :cond_0
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1623
    array-length p4, p1

    if-ge p4, p2, :cond_1

    goto :goto_0

    .line 1626
    :cond_1
    iget-object p2, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p2, p3}, Lcom/android/settings/RadioInfo;->access$4202(Lcom/android/settings/RadioInfo;I)I

    .line 1628
    iget-object p0, p0, Lcom/android/settings/RadioInfo$28;->this$0:Lcom/android/settings/RadioInfo;

    const/4 p2, 0x0

    aget p1, p1, p2

    invoke-static {p0, p3, p1}, Lcom/android/settings/RadioInfo;->access$4300(Lcom/android/settings/RadioInfo;II)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
