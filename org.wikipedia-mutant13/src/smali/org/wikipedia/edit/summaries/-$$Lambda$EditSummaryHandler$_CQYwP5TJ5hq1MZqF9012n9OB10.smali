.class public final synthetic Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryHandler$_CQYwP5TJ5hq1MZqF9012n9OB10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryHandler$_CQYwP5TJ5hq1MZqF9012n9OB10;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/edit/summaries/-$$Lambda$EditSummaryHandler$_CQYwP5TJ5hq1MZqF9012n9OB10;->f$0:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryHandler;->lambda$new$1(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
