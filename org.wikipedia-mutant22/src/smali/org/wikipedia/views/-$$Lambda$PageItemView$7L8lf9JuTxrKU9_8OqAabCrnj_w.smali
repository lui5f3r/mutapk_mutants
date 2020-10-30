.class public final synthetic Lorg/wikipedia/views/-$$Lambda$PageItemView$7L8lf9JuTxrKU9_8OqAabCrnj_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/views/PageItemView;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/views/PageItemView;Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/views/-$$Lambda$PageItemView$7L8lf9JuTxrKU9_8OqAabCrnj_w;->f$0:Lorg/wikipedia/views/PageItemView;

    iput-object p2, p0, Lorg/wikipedia/views/-$$Lambda$PageItemView$7L8lf9JuTxrKU9_8OqAabCrnj_w;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/views/-$$Lambda$PageItemView$7L8lf9JuTxrKU9_8OqAabCrnj_w;->f$0:Lorg/wikipedia/views/PageItemView;

    iget-object v1, p0, Lorg/wikipedia/views/-$$Lambda$PageItemView$7L8lf9JuTxrKU9_8OqAabCrnj_w;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/views/PageItemView;->lambda$setUpChipGroup$0$PageItemView(Lorg/wikipedia/readinglist/database/ReadingList;Landroid/view/View;)V

    return-void
.end method
