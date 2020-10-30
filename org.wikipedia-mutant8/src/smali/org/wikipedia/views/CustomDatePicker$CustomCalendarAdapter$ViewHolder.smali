.class public Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CustomDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private circleBackGround:Landroid/widget/ImageView;

.field private dayTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;


# direct methods
.method constructor <init>(Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;Landroid/view/View;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    .line 117
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900e6

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->dayTextView:Landroid/widget/TextView;

    const p1, 0x7f0900b3

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->circleBackGround:Landroid/widget/ImageView;

    .line 120
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 125
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object p1, p1, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {p1}, Lorg/wikipedia/views/CustomDatePicker;->access$000(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 126
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object p1, p1, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {p1}, Lorg/wikipedia/views/CustomDatePicker;->access$100(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v0, v0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {v0}, Lorg/wikipedia/views/CustomDatePicker;->access$000(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x7e0

    invoke-virtual {p1, v2, v0, v1}, Ljava/util/Calendar;->set(III)V

    .line 127
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object p1, p1, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {p1}, Lorg/wikipedia/views/CustomDatePicker;->access$200(Lorg/wikipedia/views/CustomDatePicker;)V

    .line 128
    iget-object p1, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method setFields(I)V
    .locals 5

    .line 132
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v0, v0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {v0}, Lorg/wikipedia/views/CustomDatePicker;->access$300(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v0, v0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {v0}, Lorg/wikipedia/views/CustomDatePicker;->access$300(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v3, v3, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {v3}, Lorg/wikipedia/views/CustomDatePicker;->access$000(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 133
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->dayTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v3, v3, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0400c5

    invoke-static {v3, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->dayTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v3, v3, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0402e9

    invoke-static {v3, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v0, v0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {v0}, Lorg/wikipedia/views/CustomDatePicker;->access$100(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v0, v0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {v0}, Lorg/wikipedia/views/CustomDatePicker;->access$000(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v3, v3, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-static {v3}, Lorg/wikipedia/views/CustomDatePicker;->access$100(Lorg/wikipedia/views/CustomDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 139
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->dayTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->this$1:Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;

    iget-object v2, v2, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter;->this$0:Lorg/wikipedia/views/CustomDatePicker;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0402c0

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->dayTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->circleBackGround:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->dayTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->circleBackGround:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    :goto_1
    iget-object v0, p0, Lorg/wikipedia/views/CustomDatePicker$CustomCalendarAdapter$ViewHolder;->dayTextView:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "%d"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
