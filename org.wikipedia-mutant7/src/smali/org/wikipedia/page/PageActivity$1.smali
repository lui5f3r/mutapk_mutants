.class Lorg/wikipedia/page/PageActivity$1;
.super Ljava/lang/Object;
.source "PageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/PageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/wikipedia/page/PageActivity$1;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 145
    iget-object p1, p0, Lorg/wikipedia/page/PageActivity$1;->this$0:Lorg/wikipedia/page/PageActivity;

    invoke-static {p1}, Lorg/wikipedia/page/PageActivity;->access$100(Lorg/wikipedia/page/PageActivity;)Lorg/wikipedia/page/PageFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/wikipedia/page/PageFragment;->updateBookmarkAndMenuOptionsFromDao()V

    return-void
.end method
