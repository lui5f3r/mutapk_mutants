.class Lorg/wikipedia/edit/summaries/EditSummaryHandler$EditSummaryAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "EditSummaryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/summaries/EditSummaryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditSummaryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/edit/summaries/EditSummaryHandler;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/summaries/EditSummaryHandler;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummaryHandler$EditSummaryAdapter;->this$0:Lorg/wikipedia/edit/summaries/EditSummaryHandler;

    .line 80
    invoke-direct {p0, p2, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 91
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Lorg/wikipedia/edit/summaries/EditSummaryHandler$EditSummaryAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1

    .line 96
    sget-object v0, Lorg/wikipedia/edit/summaries/EditSummary;->DATABASE_TABLE:Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/edit/summaries/EditSummary;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/edit/summaries/EditSummary;->getSummary()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x1090003

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
