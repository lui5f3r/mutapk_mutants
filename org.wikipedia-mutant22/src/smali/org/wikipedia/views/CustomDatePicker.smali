.class public Lorg/wikipedia/views/CustomDatePicker;
.super Landroidx/fragment/app/DialogFragment;
.source "CustomDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;,
        Lorg/wikipedia/views/CustomDatePicker$Callback;
    }
.end annotation


# static fields
.field public static final LEAP_YEAR:I = 0x7e0

.field private static final MAX_COLUMN_SPAN:I = 0x7


# instance fields
.field private callback:Lorg/wikipedia/views/CustomDatePicker$Callback;

.field private callbackDay:Ljava/util/Calendar;

.field day:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field monthGrid:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field monthString:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field nextMonthBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field previousMonthBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private selectedDay:Ljava/util/Calendar;

.field private today:Ljava/util/Calendar;

.field private unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$000(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$200(Lorg/wikipedia/views/CustomDatePicker;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/wikipedia/views/CustomDatePicker;->setDayString()V

    return-void
.end method

.method static synthetic access$300(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/wikipedia/views/CustomDatePicker;->today:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 62
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private setDayString()V
    .locals 2

    .line 153
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->day:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->getFeedCardShortDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setMonthString()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->monthString:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->getMonthOnlyWithoutDayDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUpMonthGrid()V
    .locals 4

    .line 83
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->monthGrid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->monthGrid:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    invoke-direct {v1, p0}, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;-><init>(Lorg/wikipedia/views/CustomDatePicker;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onCreateDialog$0$CustomDatePicker(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 60
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker;->callback:Lorg/wikipedia/views/CustomDatePicker$Callback;

    iget-object p2, p0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-interface {p1, p2, v0}, Lorg/wikipedia/views/CustomDatePicker$Callback;->onDatePicked(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0c0030

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->unbinder:Lbutterknife/Unbinder;

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->today:Ljava/util/Calendar;

    .line 54
    invoke-direct {p0}, Lorg/wikipedia/views/CustomDatePicker;->setUpMonthGrid()V

    .line 55
    invoke-direct {p0}, Lorg/wikipedia/views/CustomDatePicker;->setMonthString()V

    .line 56
    invoke-direct {p0}, Lorg/wikipedia/views/CustomDatePicker;->setDayString()V

    .line 57
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lorg/wikipedia/views/-$$Lambda$CustomDatePicker$0Q9cRUnteSVnSyxyMhOHTbUhgiI;

    invoke-direct {p1, p0}, Lorg/wikipedia/views/-$$Lambda$CustomDatePicker$0Q9cRUnteSVnSyxyMhOHTbUhgiI;-><init>(Lorg/wikipedia/views/CustomDatePicker;)V

    const v1, 0x7f10008a

    .line 59
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget-object p1, Lorg/wikipedia/views/-$$Lambda$CustomDatePicker$9t3Afo27sAc_lXvj8p2DLSOE08E;->INSTANCE:Lorg/wikipedia/views/-$$Lambda$CustomDatePicker$9t3Afo27sAc_lXvj8p2DLSOE08E;

    const v1, 0x7f100089

    .line 61
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->unbinder:Lbutterknife/Unbinder;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->unbinder:Lbutterknife/Unbinder;

    .line 167
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method onNextMonthClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 77
    iget-object v1, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr v0, v2

    :goto_0
    const/16 v3, 0x7e0

    invoke-virtual {v1, v3, v0, v2}, Ljava/util/Calendar;->set(III)V

    .line 78
    invoke-direct {p0}, Lorg/wikipedia/views/CustomDatePicker;->setMonthString()V

    .line 79
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->monthGrid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method onPreviousMonthClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 69
    iget-object v1, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    :goto_0
    const/16 v3, 0x7e0

    invoke-virtual {v1, v3, v0, v2}, Ljava/util/Calendar;->set(III)V

    .line 70
    invoke-direct {p0}, Lorg/wikipedia/views/CustomDatePicker;->setMonthString()V

    .line 71
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->monthGrid:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCallback(Lorg/wikipedia/views/CustomDatePicker$Callback;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/wikipedia/views/CustomDatePicker;->callback:Lorg/wikipedia/views/CustomDatePicker$Callback;

    return-void
.end method

.method public setSelectedDay(II)V
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->selectedDay:Ljava/util/Calendar;

    const/16 v1, 0x7e0

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Calendar;->set(III)V

    .line 158
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker;->callbackDay:Ljava/util/Calendar;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Calendar;->set(III)V

    return-void
.end method
