.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListSyncBehaviorDialogs$olo-jUB48lQ8wZPxeLMFBBXoNeo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListSyncBehaviorDialogs$olo-jUB48lQ8wZPxeLMFBBXoNeo;->f$0:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListSyncBehaviorDialogs$olo-jUB48lQ8wZPxeLMFBBXoNeo;->f$0:Landroid/widget/CheckBox;

    invoke-static {v0, p1}, Lorg/wikipedia/readinglist/ReadingListSyncBehaviorDialogs;->lambda$promptLogInToSyncDialog$6(Landroid/widget/CheckBox;Landroid/content/DialogInterface;)V

    return-void
.end method
