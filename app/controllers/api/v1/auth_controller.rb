class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create # POST /api/v1/login

    user = User.find_by(email: user_login_params[:email])
    if user&.authenticate(user_login_params[:password])
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user), jwt: token }, status: :accepted
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:email, :password)
  end
end




#   def create
#     # create a jwt token
#     user = User.find_by(email: params[:email])
#     if user && user.authenticate(params[:password])
#       payload = { user_id: user.id}
#       secret = 's3cret!'
#       token = JWT.encode(payload, secret, 'HS256')

#       render json: { id: user.id, email: user.email, jwt: token }
#     else
#       render json: { error: 'Invalid username or password'}
#     end
#   end


#   def show
#     # byebug
#     token = request.headers['Authorization'].split(' ').last
#     decoded_token = JWT.decode( token, 's3cret!', true, { algorithm: 'HS256' })
#     id = decoded_token.first['user_id']

#     user = User.find(id)
#     if user
#       render json: { id: user.id, email: user.email, jwt: token }
#     else
#       render json: { error: 'Invalid token' }
#     end

#   end



# end
 








    # find user based on user name
    # if exists
    #  check if it has the right password
    #     if thats true, return the user as json

 
    # if user name is invalid or pw doesn't match
    #   returns an error message