.class Lcom/google/android/material/picker/MaterialDateRangePickerView$1;
.super Ljava/lang/Object;
.source "MaterialDateRangePickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/picker/MaterialDateRangePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;


# direct methods
.method constructor <init>(Lcom/google/android/material/picker/MaterialDateRangePickerView;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-virtual {p1}, Lcom/google/android/material/picker/MaterialCalendarView;->getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/material/picker/MonthInYearAdapter;->withinMonth(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {p1}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$000(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I

    move-result p1

    if-gez p1, :cond_1

    .line 72
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {p0, p3}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$002(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I

    goto :goto_0

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {p1}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$100(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I

    move-result p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {p1}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$000(Lcom/google/android/material/picker/MaterialDateRangePickerView;)I

    move-result p1

    if-le p3, p1, :cond_2

    .line 74
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {p0, p3}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$102(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I

    goto :goto_0

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$102(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I

    .line 77
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialDateRangePickerView$1;->this$0:Lcom/google/android/material/picker/MaterialDateRangePickerView;

    invoke-static {p0, p3}, Lcom/google/android/material/picker/MaterialDateRangePickerView;->access$002(Lcom/google/android/material/picker/MaterialDateRangePickerView;I)I

    :goto_0
    return-void
.end method
