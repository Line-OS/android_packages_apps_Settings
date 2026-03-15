.class public abstract Lcom/google/android/material/picker/MaterialCalendarView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "MaterialCalendarView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/appcompat/widget/LinearLayoutCompat;"
    }
.end annotation


# instance fields
.field private final monthInYearAdapter:Lcom/google/android/material/picker/MonthInYearAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/picker/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/picker/MaterialCalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 57
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 60
    sget v0, Lcom/google/android/material/R$layout;->mtrl_date_picker_calendar_days_header:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    sget v0, Lcom/google/android/material/R$layout;->mtrl_date_picker_calendar_days:I

    invoke-virtual {p3, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    sget p3, Lcom/google/android/material/R$id;->date_picker_calendar_days_header:I

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/GridView;

    .line 63
    sget v0, Lcom/google/android/material/R$id;->date_picker_calendar_days:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 67
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {p2, v1}, Lcom/google/android/material/picker/MonthInYear;->create(II)Lcom/google/android/material/picker/MonthInYear;

    move-result-object p2

    .line 68
    new-instance v1, Lcom/google/android/material/picker/MonthInYearAdapter;

    invoke-direct {v1, p1, p2}, Lcom/google/android/material/picker/MonthInYearAdapter;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/MonthInYear;)V

    iput-object v1, p0, Lcom/google/android/material/picker/MaterialCalendarView;->monthInYearAdapter:Lcom/google/android/material/picker/MonthInYearAdapter;

    .line 70
    new-instance p1, Lcom/google/android/material/picker/DaysHeaderAdapter;

    invoke-direct {p1}, Lcom/google/android/material/picker/DaysHeaderAdapter;-><init>()V

    invoke-virtual {p3, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget p1, p2, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    invoke-virtual {p3, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 72
    iget-object p1, p0, Lcom/google/android/material/picker/MaterialCalendarView;->monthInYearAdapter:Lcom/google/android/material/picker/MonthInYearAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget p1, p2, Lcom/google/android/material/picker/MonthInYear;->daysInWeek:I

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 74
    new-instance p1, Lcom/google/android/material/picker/MaterialCalendarView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/picker/MaterialCalendarView$1;-><init>(Lcom/google/android/material/picker/MaterialCalendarView;)V

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected abstract drawSelection(Landroid/widget/AdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation
.end method

.method protected final getMonthInYearAdapter()Lcom/google/android/material/picker/MonthInYearAdapter;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendarView;->monthInYearAdapter:Lcom/google/android/material/picker/MonthInYearAdapter;

    return-object p0
.end method

.method protected abstract getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method protected abstract getSelection()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method
