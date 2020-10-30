.class Lorg/wikipedia/edit/EditSectionActivity$1;
.super Ljava/lang/Object;
.source "EditSectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/edit/EditSectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/edit/EditSectionActivity;->showProgressBar(Z)V

    .line 130
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 131
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-static {v1}, Lorg/wikipedia/edit/EditSectionActivity;->access$100(Lorg/wikipedia/edit/EditSectionActivity;)I

    move-result v1

    const-string v2, "org.wikipedia.edit_section.sectionid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 133
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-static {v0}, Lorg/wikipedia/util/DeviceUtil;->hideSoftKeyboard(Landroid/app/Activity;)V

    .line 134
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity$1;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
