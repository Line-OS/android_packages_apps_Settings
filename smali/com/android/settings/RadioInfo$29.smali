.class Lcom/android/settings/RadioInfo$29;
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

    .line 1637
    iput-object p1, p0, Lcom/android/settings/RadioInfo$29;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1640
    iget-object p1, p0, Lcom/android/settings/RadioInfo$29;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1, p3}, Lcom/android/settings/RadioInfo;->access$4402(Lcom/android/settings/RadioInfo;I)I

    .line 1641
    iget-object p1, p0, Lcom/android/settings/RadioInfo$29;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$2400(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/RadioInfo;->access$4500()[I

    move-result-object p2

    aget p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 1642
    iget-object p0, p0, Lcom/android/settings/RadioInfo$29;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p0}, Lcom/android/settings/RadioInfo;->access$4600(Lcom/android/settings/RadioInfo;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
